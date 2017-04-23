# Message definition for Entities

std_msgs/Header header
uuid_msgs/UniqueID id
string name

geometry_msgs/Pose pose
float64 certainty

# solid geometric primitives
bool has_primitives
tobi_world_msgs/GeometricPrimitive[] primitives

# meshes
bool has_mesh
shape_msgs/Mesh mesh

# spirits
tobi_world_msgs/Spirit[] spirits