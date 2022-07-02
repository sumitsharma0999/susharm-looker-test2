view: persons {
  sql_table_name: rightsizing.Persons ;;
  drill_fields: [person_id]

  dimension: person_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.PersonID ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  measure: count {
    type: count
    drill_fields: [person_id, first_name, last_name]
  }
}
