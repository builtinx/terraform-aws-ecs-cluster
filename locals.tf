locals {
  cluster_name                           = "ecs${title(var.environment)}Cluster"
  autoscaling_group_name                 = "asg${title(var.environment)}ContainerInstance"
  autoscaling_group_name_scheduled_tasks = "asg${title(var.environment)}ContainerInstanceScheduledTasks"
  security_group_name                    = "sgContainerInstance"
  ecs_for_ec2_service_role_name          = "${var.environment}ContainerInstanceProfile"
  ecs_cluster_name                       = coalesce(var.cluster_name, local.cluster_name)
}

