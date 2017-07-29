/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nvmate.Helper;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Sai_Kameswari
 */
public class CollectionCompare {

    public static void addToMap(int sno, String heading, String value) {
        HashMap<String, String> innermMap = new HashMap<String, String>();
        innermMap.put(heading, value);
        HashMap<Integer, HashMap<String, String>> outerMap = new HashMap<Integer, HashMap<String, String>>();
        outerMap.put(sno, innermMap);
        
        for(Map.Entry entry : outerMap.entrySet())
        {
            System.out.println(entry.getKey() + "  "+entry.getValue());
        }
    }

}
