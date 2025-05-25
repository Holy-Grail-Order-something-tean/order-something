package com.order_something.holy_grail.entity;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
public class Category {
    /*
        The fields of the Entity class is needed match database's columns name
     */
    private Long category_id;
    private String name;
}
