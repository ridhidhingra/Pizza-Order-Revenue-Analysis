-- pizza project 

-- select* from pizzas
-- 1) number of order placed 
-- select count(order_id ) as total from orders
-- 2) total revenue generated 
-- select  round(sum(price*quantity),2)as total 
-- from pizzas
-- inner join order_details
-- on
-- pizzas.pizza_id = order_details.pizza_id

-- 3)  -- -- Identify the highest-priced pizza
-- select pizza_types.name,pizzas.pizza_id,pizzas.price,pizzas.size
-- from pizza_types
-- inner join pizzas
-- on
-- pizzas.pizza_type_id= pizza_types.pizza_type_id
-- order by price desc
-- limit 1

-- -- 4)identify the most common pizza size ordered.
-- select 
-- count(order_details_id) as total from
-- pizzas
-- inner join order_details
-- on
-- pizzas.pizza_id = order_details.pizza_id
-- group by pizzas.size
-- order by total desc
-- limit 1

-- 5)List the top 5 most ordered pizza types along with their quantities.
-- select sum(order_details.quantity) as total from 
-- pizza_types
-- inner join pizzas
-- on 
-- pizzas.pizza_type_id=pizza_types.pizza_type_id
-- inner join order_details
-- on 
-- order_details.pizza_id=pizzas.pizza_id
-- group by name
-- order by total desc
-- limit 1

-- 6) -- to find the total quantity of each pizza category ordered
-- select pizza_types.category,
-- sum(orders_details.quantity) as total
-- from 
-- pizza_types
-- inner join
-- pizzas on
--  pizza_types.pizza_type_id = pizzas.pizza_type_id
-- inner join
-- orders_details on
-- orders_details.pizza_id = pizzas.pizza_id
--  group by pizza_types.category 
-- order by total desc
-- limit 1

-- 7) Determine the distribution of orders by hour of the day
-- select 
-- hour(order_time) as hr,
-- count(order_id) as customer_id
-- from orders
-- group by hour(order_time)

-- 8) to find the categorywise distribution of pizzas.
-- select
-- count(name) 
-- from pizza_types
-- group by category
-- 9)Group the orders by date and calculate the average number of pizzas ordered per day.

--  select avg(quantity)from 
-- ( select orders.order_date, sum(orders_details.quantity) as quantity
--  from orders 
--  join orders_details
--  on
-- orders.order_id= orders_details.order_id 
--  group by orders.order_date) as sample

-- 10) top 3 most ordered pizza type based on revenue

-- select pizza_types.pizza_type_id,sum(quantity*price) as revenue
-- from pizzas
-- inner join
-- orders_details
-- on pizzas.pizza_id=orders_details.pizza_id
-- inner join 
-- pizza_types
-- on pizzas.pizza_type_id=pizza_types.pizza_type_id
-- group by pizza_type_id
-- order by revenue desc limit 3

-- 11)percentage contribution of each pizza type 
-- select
-- pizza_types.category,
-- round(sum(quantity*price)/(select round(sum(price*quantity),2) 
-- as total_revenue
-- from pizzas
-- inner join 
-- orders_details
-- on
-- pizzas.pizza_id = orders_details.pizza_id)*100,2)as rev from 
--  pizzas
-- inner join
-- orders_details
-- on 
-- pizzas.pizza_id=orders_details.pizza_id
-- inner join 
-- pizza_types
-- on
--  pizzas.pizza_type_id=pizza_types.pizza_type_id
-- group by pizza_types.category
-- order by rev desc






