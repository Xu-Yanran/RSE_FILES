
#include "ros/ros.h"
#include "assignment_srv/assign_srv.h"
 
//对3个变量求和，并将计算结果发生给其他节点，Request为上一部分的请求，而Response为下一部分的响应
bool add(assignment_srv::assign_srv::Request  &req,
         assignment_srv::assign_srv::Response &res)
{
  res.sum = req.num1 * req.num2;
    setlocale(LC_ALL, "");
    ROS_INFO("I'm 许焱然, 20172287");
    ROS_INFO("Result is %ld", (long int)res.sum);
  return true;
}
 
int main(int argc, char **argv)
{
  ros::init(argc, argv, "mul_2_ints_server");
  ros::NodeHandle n;
 
  //创建服务并在ROS中发布广播
  ros::ServiceServer service = n.advertiseService("mul_2_ints", add);
    
  ROS_INFO("Who are you? Pls help to calculate 22 * 87"); //在命令行窗口输出信息
  ros::spin();
 
  return 0;
}