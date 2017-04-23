cmake_minimum_required(VERSION 2.8.3)
project(tobi_world_msgs)

find_package(catkin REQUIRED 
	COMPONENTS 
		message_generation 
		geometry_msgs
		shape_msgs
		uuid_msgs
		nav_msgs
		visualization_msgs
)

add_message_files(
	FILES
		EntityMarker.msg

		Entity.msg
		Spirit.msg
		GeometricPrimitive.msg

		Region.msg
		Regions.msg
		
		#from Plugins
		RobotConfig.msg
)

add_service_files(
	FILES
		FindEntities.srv
		GetEntity.srv
		UpdatePose.srv
		AddEntity.srv
		LoadPlugin.srv
		
		#from Plugins
		MoveTo.srv
)

generate_messages(
	DEPENDENCIES 
		geometry_msgs
		shape_msgs
		uuid_msgs
		nav_msgs
		visualization_msgs
)

catkin_package(
	CATKIN_DEPENDS 
		message_runtime 
		geometry_msgs
		uuid_msgs
)
