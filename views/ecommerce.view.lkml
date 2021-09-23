view: ecommerce {
  derived_table: {
    sql: select *
      from ecommerce.order_items
      natural join ecommerce.orders
      natural join ecommerce.inventory_items
      natural join ecommerce.distribution_centers
      natural join ecommerce.products
      natural join ecommerce.users
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."user_id" ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}."product_id" ;;
  }

  dimension: distribution_center_id {
    type: string
    sql: ${TABLE}."distribution_center_id" ;;
  }

  dimension: inventory_item_id {
    type: string
    sql: ${TABLE}."inventory_item_id" ;;
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}."order_id" ;;
  }

  dimension: order_item_id {
    type: string
    sql: ${TABLE}."order_item_id" ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}."sale_price" ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}."created_at" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: actual_cost {
    type: number
    sql: ${TABLE}."actual_cost" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: cost {
    type: number
    sql: ${TABLE}."cost" ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}."retail_price" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}."age" ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}."gender" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: traffic_source {
    type: string
    sql: ${TABLE}."traffic_source" ;;
  }

  set: detail {
    fields: [
      user_id,
      product_id,
      distribution_center_id,
      inventory_item_id,
      order_id,
      order_item_id,
      sale_price,
      created_at,
      status,
      actual_cost,
      name,
      cost,
      retail_price,
      brand,
      category,
      first_name,
      last_name,
      city,
      state,
      age,
      gender,
      email,
      traffic_source
    ]
  }
}
