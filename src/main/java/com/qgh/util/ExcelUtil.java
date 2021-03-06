package com.qgh.util;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddressList;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.*;

/**
 * @author 秦光泓
 * @title:利用反射写一个工具类
 * @projectName spring_mvc_8
 * @description: TODO
 * @date 2020/4/311:33
 */

/**
 * <p>Title: ExcelVOAttribute.java</p>
 *
 * <p>Description:  * ExcelUtil工具类实现功能:
 * <p>
 * 导出时传入list<t>,即可实现导出为一个excel,其中每个对象Ｔ为Excel中的一条记录.
 * <p>
 * 导入时读取excel,得到的结果是一个list<t>.T是自己定义的对象.
 * <p>
 * 需要导出的实体对象只需简单配置注解就能实现灵活导出,通过注解您可以方便实现下面功能:
 * <p>
 * 1.实体属性配置了注解就能导出到excel中,每个属性都对应一列.
 * <p>
 * 2.列名称可以通过注解配置.
 * <p>
 * 3.导出到哪一列可以通过注解配置.
 * <p>
 * 4.鼠标移动到该列时提示信息可以通过注解配置.
 * <p>
 * 5.用注解设置只能下拉选择不能随意填写功能.
 * <p>
 * 6.用注解设置是否只导出标题而不导出内容,这在导出内容作为模板以供用户填写时比较实用. </p>
 */
public class ExcelUtil<T> implements Serializable {
    private static final long serialVersionUID = 551970754610248636L;
    //代表要导出的实体类
    private Class<T> clazz;

    public ExcelUtil(Class<T> clazz) {
        this.clazz = clazz;
    }

    /**
     * 将excel表单数据源的数据导入到list
     *
     * @param sheetName 工作表的名称
     * @param input     java输入流
     */
    public List<T> getExcelToList(String sheetName, InputStream input) {
        //声明最后返回的集合 集合里面放入一个entity 代表一行
        List<T> list = new ArrayList<T>();
        try {
            //相当于一个excel .xls
            HSSFWorkbook book = new HSSFWorkbook(input);
            //相当于xls中的一张工作簿
            HSSFSheet sheet = null;
            //如果指定sheet名则取sheet中的内容
            if (StringUtils.isNoneBlank(sheetName)) {
                sheet = book.getSheet(sheetName);
            }
            //如果传入的sheet名不存在则默认指向第一个sheet
            if (sheet == null) {
                sheet = book.getSheetAt(0);
            }
            //得到数据行数 int rows = sheet.getPhysicalNumberOfRows();
            int rows = sheet.getLastRowNum();

            //有数据时才处理
            if (rows > 0) {
                //得到类的所有files-----反射实现
                Field[] allFields = clazz.getDeclaredFields();
                //定义一个map用于存放序列的序号和fileds
                Map<Integer, Field> fieldMap = new HashMap<>();
                for (int i = 0, index = 0; i < allFields.length; ++i) {
                    Field field = allFields[i];
                    //将有注解注释的字段放入map中 被ExcelAttribute类注解过
                    if (field.isAnnotationPresent(ExcelAttribute.class)) {
                        //设置类的私有字段可访问
                        field.setAccessible(true);
                        fieldMap.put(index, field);
                        index++;
                    }
                }
                //从第二行开始取出数据，默认第一行是表头
                for (int i = 0, len = rows; i < len; ++i) {
                    //得到一行中的所有单元格对象
                    HSSFRow row = sheet.getRow(i);
                    Iterator<Cell> cells = row.cellIterator();
                    T entity = null;
                    int index = 0;
                    while (cells.hasNext()) {
                        //单元格中的内容
                        String c = cells.next().getStringCellValue();
                        //内容为空 指针指向下一个格子
                        if (!StringUtils.isNoneBlank(c)) {
                            continue;
                        }
                        //没弄懂
                        if (c.indexOf("合计： ") != -1) {
                            continue;
                        }
                        //如果不存在实例则新建
                        entity = entity == null ? clazz.newInstance() : entity;
                        //从map中得到对应列的filed
                        Field field = fieldMap.get(index);
                        if (field == null) {
                            continue;
                        }
                        //获取类型，并根据对象类型设置值
                        Class<?> fieldType = field.getType();
                        if (fieldType == null) {
                            continue;
                        }

                        if (String.class == fieldType) {
                            field.set(entity, String.valueOf(c));
                        } else if (BigDecimal.class == fieldType) {
                            c = c.indexOf("%") != -1 ? c.replace("%", "") : c;
                            field.set(entity, BigDecimal.valueOf(Double.valueOf(c)));
                        } else if (Date.class == fieldType) {
                            field.set(entity, DateUtils.parseDate(c));
                        } else if (Integer.class == fieldType || Integer.TYPE == fieldType) {
                            field.set(entity, Integer.parseInt(c));
                        } else if (Long.class == fieldType || Long.TYPE == fieldType) {
                            field.set(entity, Long.valueOf(c));
                        } else if (Float.class == fieldType || Float.TYPE == fieldType) {
                            field.set(entity, Float.valueOf(c));
                        } else if (Short.class == fieldType || Short.TYPE == fieldType) {
                            field.set(entity, Short.valueOf(c));
                        } else if (Double.class == fieldType || Double.TYPE == fieldType) {
                            field.set(entity, Double.valueOf(c));
                        } else if (Character.TYPE == fieldType) {
                            if ((c != null) && (c.length() > 0))
                                field.set(entity, Character.valueOf(c.charAt(0)));
                        }
                        index++;
                    }
                    //相当于把每一行封装成了一个entity
                    if (entity != null) {
                        list.add(entity);
                    }
                }
            }
        } catch (Exception e) {
            throw new RuntimeException("将excel表单数据源的数据导入到list异常!", e);
        }
        return list;
    }

    /**
     * 将list数据源的数据导入到excel表单 需要用到输出流 需要将数据写入到excel中
     *
     * @param list      数据源
     * @param sheetName 工作表的名称
     * @param output    java输出流
     */
    public boolean getListToExcel(List<T> list, String sheetName, OutputStream output) {
        try {
            //excel中的每个sheet中最多有65536行
            int sheetSize = 65536;
            //得到所有定义的字段
           /* Field[] allFields = clazz.getDeclaredFields();
            List<Field> fields = new ArrayList<>();
            //得到所有的field并存放到一个list中
            for (Field field : allFields) {
                if (field.isAnnotationPresent(ExcelAttribute.class)) {
                    fields.add(field);
                }
            }*/
            List<Field> fields = getMappedFiled(clazz, null);
            //生成工作簿对象
            HSSFWorkbook book = new HSSFWorkbook();
            //取出一共有多少个sheet
            int listSize = 0;
            if (list != null && list.size() >= 0) {
                listSize = list.size();
            }
            double sheetNo = Math.ceil((listSize / sheetSize));
            for (int index = 0; index <= sheetNo; ++index) {
                //产生工作表对象
                HSSFSheet sheet = book.createSheet();
                //设置工作表名称
                book.setSheetName(index, sheetName + index);
                HSSFRow row;
                HSSFCell cell;//单元格
                //生产一行
                row = sheet.createRow(0);
                /** ******普通列样式********/
                HSSFFont font = book.createFont();
                HSSFCellStyle cellStyle = book.createCellStyle();
                font.setFontName("Arail narrow");//字体
                font.setBoldweight(HSSFFont.COLOR_NORMAL);//字体宽度
                cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);//水平居中
                font.setFontHeightInPoints((short)15);//设置字体大小 12px
                /** ****标红列样式*** **/
                HSSFFont newFont = book.createFont();
                HSSFCellStyle newCellStyle = book.createCellStyle();
                newFont.setFontName("Arail narrow");//字体
                newFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
                //创建列名称
                for (int i = 0; i < fields.size(); ++i) {
                    Field field = fields.get(i);
                    //获得备注接标记得了的字段的上的colum属性
                    ExcelAttribute attr = field.getAnnotation(ExcelAttribute.class);
                    int col = i;
                    //根据指定的序号获得列
                    if (StringUtils.isNoneBlank(attr.column())) {
                        col = getExcelCol(attr.column());
                    }
                    //创建列
                    cell = row.createCell(col);
                    if (attr.isMark()) {
                        newFont.setColor(HSSFFont.COLOR_RED);
                        newCellStyle.setFont(newFont);
                        cell.setCellStyle(newCellStyle);
                    } else {
                        cell.setCellStyle(createHeadStyle(book));
                    }
                    //设置列的宽度
                    sheet.setColumnWidth(i, (int) ((attr.name().getBytes().length <= 4 ? 6 : attr.name().getBytes().length) * 1.5 * 256));
                    //设置列中写入的类型为string类型
                    cell.setCellType(HSSFCell.CELL_TYPE_STRING);
                    //写入列名
                    cell.setCellValue(attr.name());
                    //如果设置了提示信息则鼠标放上去提示
                    if (StringUtils.isNotBlank(attr.prompt())) {
                        setHSSFPrompt(sheet, "", attr.prompt(), 1, 100, col, col);
                    }
                    //如果设置了combo属性本列只能选择不能输入
                    if (attr.combo().length > 0) {
                        setHSSFValidation(sheet, attr.combo(), 1, 100, col, col);
                    }
                }
                /* ****创建内容列****** */
                font = book.createFont();
                cellStyle = book.createCellStyle();
                int startNo = index * sheetSize;
                int endNo = Math.min(startNo + sheetSize, listSize);
                //写入各条记录，每条记录对应excel表中的一行
                for (int i = startNo; i < endNo; ++i) {
                    row = sheet.createRow(i + 1 - startNo);
                    //取出集合中的第一条记录
                    T vo = list.get(i);
                    for (int j = 0; j < fields.size(); ++j) {
                        //获取field
                        Field field = fields.get(j);
                        //设置实体类的私有属性可访问
                        field.setAccessible(true);
                        ExcelAttribute attr = field.getAnnotation(ExcelAttribute.class);
                        int col = j;
                        //根据指定的顺序获取列好
                        if (StringUtils.isNotBlank(attr.column())) {
                            col = getExcelCol(attr.column());
                        }
                        //根据ExcleVOAttribute中的情况设置决定是否导出，有些情况需要保持为空,希望用户填写这一列
                        if (attr.isExport()) {
                            //创建cell  不是i 而是根据字段上的指定的位置创建单元格
                            cell = row.createCell(col);
                            if (attr.isMark()) {
                                newFont.setColor(HSSFFont.COLOR_RED);
                                newCellStyle.setFont(newFont);
                                cell.setCellStyle(newCellStyle);
                            } else {
//                                font.setColor(HSSFFont.COLOR_NORMAL);
//                                cellStyle.setFont(font);
//                                cell.setCellStyle(cellStyle);
                                  cell.setCellStyle(createFontStyle(book));
                            }
                            //如果数据存在就填入 不存在就填入空格
                            Class<?> classType = field.getType();
                            String value = null;
                            if (field.get(vo) != null && classType.isAssignableFrom(Date.class)) {
                                value = CommUtil.getNowDateLongStr(String.valueOf(field.get(vo)));
                            }
                            //设置value
                            cell.setCellValue(field.get(vo) == null ? ""
                                    : String.valueOf(field.get(vo)));// 如果数据存在就填入,不存在填入空格.
                        }
                    }
                }
                /* *************创建合计列*************** */
                HSSFRow lastRow = sheet.createRow(sheet.getLastRowNum() + 1);
                for (int i = 0; i < fields.size(); ++i) {
                    Field field = fields.get(i);
                    ExcelAttribute attr = field.getAnnotation(ExcelAttribute.class);
                    if (attr.isSum()) {
                        int col = i;
                        //根据指定的顺序获得列号
                        if (StringUtils.isNotBlank(attr.column())) {
                            col = getExcelCol(attr.column());
                        }
                        BigDecimal totalNumber = BigDecimal.ZERO;
                        for (int j = 1, len = (sheet.getLastRowNum() - 1); j < len; ++j) {
                            HSSFRow hssfRow = sheet.getRow(j);
                            if (hssfRow != null) {
                                HSSFCell hssfCell = hssfRow.getCell(col);
                                if (hssfCell != null && hssfCell.getCellType() == HSSFCell.CELL_TYPE_STRING
                                        && Float.isNaN(Float.valueOf(hssfCell.getStringCellValue()))) {
                                    totalNumber.add(BigDecimal.valueOf(Double.valueOf(hssfCell.getStringCellValue())));
                                }
                            }
                        }
                        HSSFCell sumCell = lastRow.createCell(col);
                        sumCell.setCellValue(new HSSFRichTextString("合计：" + totalNumber));
                    }
                }
            }
            //刷新缓冲流
            output.flush();
            book.write(output);
            output.close();
            return Boolean.TRUE;
        } catch (Exception e) {
            throw new RuntimeException("将list数据源的数据导入到excel表单异常!", e);
        }
    }

    /**
     * 设置某些列的值只能输入预制的数据,显示下拉框.
     *
     * @param sheet    要设置的sheet.
     * @param textlist 下拉框显示的内容
     * @param firstRow 开始行
     * @param endRow   结束行
     * @param firstCol 开始列
     * @param endCol   结束列
     * @return 设置好的sheet.
     */
    private HSSFSheet setHSSFValidation(HSSFSheet sheet, String[] textlist, int firstRow, int endRow, int firstCol, int endCol) {
        // 加载下拉列表内容
        DVConstraint constraint = DVConstraint.createExplicitListConstraint(textlist);
        // 设置数据有效性加载在哪个单元格上,四个参数分别是：起始行、终止行、起始列、终止列
        CellRangeAddressList regions = new CellRangeAddressList(firstRow, endRow, firstCol, endCol);
        // 数据有效性对象
        HSSFDataValidation data_validation_list = new HSSFDataValidation(regions, constraint);
        sheet.addValidationData(data_validation_list);
        return sheet;
    }

    /***
     *  设置单元格上提示
     * @param sheet  要设置的sheet
     * @param promptTitle 标题
     * @param promptContent 内容
     * @param firstRow 开始行
     * @param endRow 结束行
     * @param firstCol 开始列
     * @param endCol 结束列
     * @return sheet
     * @date 2020/4/3  17:15
     */
    private HSSFSheet setHSSFPrompt(HSSFSheet sheet, String promptTitle, String promptContent, int firstRow, int endRow,
                                    int firstCol, int endCol) {
        // 构造constraint对象
        DVConstraint constraint = DVConstraint.createCustomFormulaConstraint("DD1");
        // 四个参数分别是：起始行、终止行、起始列、终止列
        CellRangeAddressList regions = new CellRangeAddressList(firstRow, endRow, firstCol, endCol);
        // 数据有效性对象
        HSSFDataValidation data_validation_view = new HSSFDataValidation(regions, constraint);
        data_validation_view.createPromptBox(promptTitle, promptContent);
        sheet.addValidationData(data_validation_view);
        return sheet;
    }

    /**
     * 将EXCEL中A,B,C,D,E列映射成0,1,2,3
     *
     * @param col
     */
    private int getExcelCol(String col) {
        col = col.toUpperCase();
        //从-1开始计算，字母重1开始运算，这种总数下来算数正好相同
        int count = -1;
        char[] cs = col.toCharArray();
        for (int i = 0; i < cs.length; ++i) {
            count += (cs[i] - 64) * Math.pow(26, cs.length - 1 - i);
        }
        return count;
    }

    /***
     * 得到实体类所有通过注解映射了数据表的字段
     * @param clazz
     * @param fields
     * @return java.util.List<java.lang.reflect.Field>
     * @date 2020/4/3  17:27
     */

    @SuppressWarnings("rawtypes")
    private List<Field> getMappedFiled(Class clazz, List<Field> fields) {
        if (fields == null) {
            fields = new ArrayList<Field>();
        }
        Field[] allFields = clazz.getDeclaredFields();// 得到所有定义字段
        // 得到所有field并存放到一个list中.
        for (Field field : allFields) {
            if (field.isAnnotationPresent(ExcelAttribute.class)) {
                fields.add(field);
            }
        }
        if (clazz.getSuperclass() != null
                && !clazz.getSuperclass().equals(Object.class)) {
            getMappedFiled(clazz.getSuperclass(), fields);
        }
        return fields;
    }

    /**
     * 垂直水平居中风格 普通文本
     *
     * @param wb
     * @return
     */
    private static CellStyle createVHCenterStyle(final Workbook wb) {
        final CellStyle style = wb.createCellStyle(); // 样式对象
        style.setVerticalAlignment(VerticalAlignment.CENTER);// 垂直
        style.setAlignment(HorizontalAlignment.CENTER);// 水平
        style.setWrapText(true);// 指定当单元格内容显示不下时自动换行
       /* // 添加边框
        style.setBorderBottom(BorderStyle.THIN);
        style.setBorderLeft(BorderStyle.THIN);
        style.setBorderRight(BorderStyle.THIN);
        style.setBorderTop(BorderStyle.THIN);*/
        return style;
    }
    /**
     * 创建浅蓝绿色背景风格 黄色 标题
     *
     * @param wb
     */
    private static CellStyle createHeadStyle(final Workbook wb) {
        CellStyle style = createVHCenterStyle(wb);
        final Font font = wb.createFont();
        font.setFontName("宋体");
        font.setFontHeight((short) 300);
        font.setBold(true);
        style.setFont(font);
        style.setFillForegroundColor(IndexedColors.YELLOW.getIndex());
        style.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        return style;
    }

    /**
     * 设置正文内容样式
     * @param wb
     * @return
     */
    private static CellStyle createFontStyle(final Workbook wb) {
        final CellStyle style = wb.createCellStyle(); // 样式对象
        //设置字体
        HSSFFont font = (HSSFFont) wb.createFont();
        font.setFontName("宋体");//字体样式
        font.setFontHeightInPoints((short)12);//字体大小
        font.setColor(HSSFColor.BLACK.index);//字体颜色
        style.setFont(font);
        return style;
    }
}
