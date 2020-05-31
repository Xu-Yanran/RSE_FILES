#include "ros/ros.h"
#include "assignment_srv/assign_srv.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mul_2_ints_client");
  if (argc != 3)
  {
    ROS_INFO("usage: mul_2_ints_client A B ");
    return 1;
  }

  ros::NodeHandle n;
  ros::ServiceClient client = n.serviceClient<assignment_srv::assign_srv>("mul_2_ints");
  assignment_srv::assign_srv srv;
  srv.request.num1 = atoll(argv[1]);
  srv.request.num2 = atoll(argv[2]);
  if (client.call(srv))
  {
    setlocale(LC_ALL, "");
    ROS_INFO("I'm 许焱然, 20172287");
    ROS_INFO("Result is %ld", (long int)srv.response.sum);
  }
  else
  {
    ROS_ERROR("Failed to call service mul_two_ints");
    return 1;
  }

  return 0;
}
