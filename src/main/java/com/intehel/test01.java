package com.intehel;

import com.alibaba.fastjson.JSON;
import com.intehel.common.util.JsonUtil;
import org.springframework.boot.web.servlet.ServletComponentScan;

import javax.servlet.annotation.WebServlet;
import java.util.*;

public class test01 {

    public static void main(String args[])//需要使用嵌套循环，注意再循环体输出i值后，需要跳出内循环，否则程序会陷入死循环。
    {

        for(int i=1;i<=500;i++)
        {
            while((i%2==0)&&(i%5==0)&&(i%7==0))


            {
                System.out.println("i="+i);
                break;
            }
        }
    }

//
//public static void main(String[] args) {
//    Map<String,Object> map=new HashMap<>();
//   String str="{\"Departments\":[{\"RecipeSeq\":\"4\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"25mg*100片\",\"ItemNum\":\"100\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"25\",\"ItemId\":\"Y00000012795\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\"3\",\"MoOrder\":\"23565081\",\"ItemName\":\"卡托普利片（25mg/片）\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"25\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118198\",\"ItemPrice\":\"3\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002042\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"mg\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"1\",\"RecipeDrId\":\"009999\",\"FeeType\":\"UC\",\"PackageName\":\"\",\"ItemSpec\":\"\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"0\",\"ItemId\":\"F00000051736\",\"ExecTime\":\"\",\"ExecDeptName\":\"内一科门诊\",\"TotalCost\":\"18\",\"MoOrder\":\"23565082\",\"ItemName\":\"主任医师门诊诊查费(一般）\",\"DeptName\":\"\",\"SysType\":\"0\",\"ExecDeptId\":\"1093\",\"StockUnit\":\"\",\"Dose\":\"\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118198\",\"ItemPrice\":\"18\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002040\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"mg\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"3\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"1mg*1支\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"1\",\"ItemId\":\"Y00000012774\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\"1.83\",\"MoOrder\":\"23565083\",\"ItemName\":\"肾上腺素注射液\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"1\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"1.8260\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002042\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"mg\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"2\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"0.1g*1支\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"0.10\",\"ItemId\":\"Y00000012736\",\"ExecTime\":\"\",\"ExecDeptName\":\"住院西药局\",\"TotalCost\":\".51\",\"MoOrder\":\"23565084\",\"ItemName\":\"氨甲苯酸注射液\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1109\",\"StockUnit\":\"\",\"Dose\":\"0.10\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"0.51\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002042\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"g\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"1\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"0.3g*10片\",\"ItemNum\":\"10\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"0.30\",\"ItemId\":\"Y00000012641\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\".81\",\"MoOrder\":\"23565085\",\"ItemName\":\"对乙酰氨基酚片\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"0.30\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"0.81\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002042\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"g\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"5\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"0.365g*1片\",\"ItemNum\":\"7\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"0.3650\",\"ItemId\":\"Y00000012808\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\".49\",\"MoOrder\":\"23565086\",\"ItemName\":\"索密痛片\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"0.3650\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"0.0695\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002041\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"g\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"4\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"1.5（1+0.5）g*1支\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"1.50\",\"ItemId\":\"Y00000012139\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\"8.25\",\"MoOrder\":\"23565087\",\"ItemName\":\"注射用头孢哌酮钠舒巴坦钠(2:1)\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"1.50\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"8.25\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002041\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"g\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"3\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"10ml*1支\",\"ItemNum\":\"2\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"10\",\"ItemId\":\"Y00000012202\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\"3.94\",\"MoOrder\":\"23565088\",\"ItemName\":\"生脉注射液\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"10\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"泵入静点\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"1.97\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002041\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"ml\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"2\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"0.2g*1瓶\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"0.20\",\"ItemId\":\"Y00000012181\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\"1.2\",\"MoOrder\":\"23565089\",\"ItemName\":\"环丙沙星氯化钠注射液\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"0.20\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"即时口服\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"1.20\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002041\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"g\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"},{\"RecipeSeq\":\"1\",\"RecipeDrId\":\"009999\",\"FeeType\":\"P\",\"PackageName\":\"\",\"ItemSpec\":\"160万u*1支\",\"ItemNum\":\"1\",\"MedicalType\":\"\",\"FeeDate\":\"00010101000000\",\"TransType\":\"1\",\"OutpatientFee\":\"\",\"OperDate\":\"20190625153852\",\"Dosage\":\"160\",\"ItemId\":\"Y00000012124\",\"ExecTime\":\"\",\"ExecDeptName\":\"门诊西药局\",\"TotalCost\":\".74\",\"MoOrder\":\"23565090\",\"ItemName\":\"注射用青霉素钠\",\"DeptName\":\"\",\"SysType\":\"1\",\"ExecDeptId\":\"1108\",\"StockUnit\":\"\",\"Dose\":\"160\",\"PaymentStatus\":\"0\",\"RecipeDrName\":\"系统管理员\",\"Usage\":\"泵入静点\",\"DiagnosName\":\"\",\"RegDate\":\"20190626000000\",\"RegNo\":\"6118199\",\"ItemPrice\":\"0.74\",\"ExecLocation\":\"\",\"InvoiceNo\":\"\",\"DeptId\":\"1093\",\"RecipeNo\":\"3002041\",\"ExecStatus\":\"0\",\"DoctorType\":\"\",\"OutpatientId\":\"0051522340\",\"Frequency\":\"PRN\",\"DosageSpec\":\"万u\",\"CancelFlag\":\"1\",\"PackageCode\":\"\"}],\"Message\":\"成功\",\"Code\":\"0\"}\n";
//    Map<String , Object> maps = (Map)JSON.parse(str);
//   /*Object departments = maps.get("Departments");
//    List<Map> listUser = (List<Map>)departments;
//    Set<String> set=new HashSet();
//    for (Map map1:listUser) {
//        set.add(map1.get("RegNo").toString());
//    }
//    Map<String,Object> map2 = new HashMap<>();
//    for (String st:set) {
//        List list = new ArrayList();
//        System.out.println(st);
//        for (Map map1:listUser) {
//            if (map1.get("RegNo").toString().equals(st)){
//                System.out.println(map1.get("RegNo"));
//                list.add(map1);
//            }
//            map2.put(st,list);
//        }
//    }
//    map.put("Departments",map2);*/
//
//    System.out.println(JsonUtil.toString(map));
//
//}

}
