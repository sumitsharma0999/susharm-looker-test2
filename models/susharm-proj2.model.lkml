connection: "k8s-rightsizing-test"

# include all the views
include: "/views/**/*.view"

datagroup: susharm_proj2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: susharm_proj2_default_datagroup

explore: persons {}
