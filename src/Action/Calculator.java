package Action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by Administrator on 2017/9/18.
 */
public class Calculator extends ActionSupport {

    private float num1;
    private String op;
    private float num2;


    public float getNum1() {
        return num1;
    }

    public void setNum1(float num1) {
        this.num1 = num1;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public float getNum2() {
        return num2;
    }

    public void setNum2(float num2) {
        this.num2 = num2;
    }

    //业务处理方法
    public String calculate() {
        float result = 0;

        switch (op.charAt(0)) {


            case '+':result=num1+num2;break;
            case '-':result=num1-num2;break;
            case '*':result=num1*num2;break;
            case '/':result=num1/num2;

        }

        ActionContext.getContext().put("result",result);
        return "calRight";
    }


}