package de.muenchen.allg.itd51.wollmux.oooui;

import com.sun.star.beans.PropertyValue;

import de.muenchen.allg.itd51.parser.ConfigThingy;
import de.muenchen.allg.itd51.parser.NodeNotFoundException;
/**
 * 
 * Contains misc helper methods.
 * 
 * TODO: make it singlton? allow multiple instances?
 * 
 * @author GOLOVKO
 *
 */
public class LimuxHelper
{


  /**
   * 
   * Set the Value for the <b>propName<\b> Name of the PropertyValue.
   * 
   * If PropertyValue with the name already exists, its value will be replaced.
   * If it doesn't exists, new PropertyValue with the appropriate Name and Value will be added to the original <b>set</b>.
   * The modified array of PropertyValue is returned.
   * 
   * New PropertyValue[] will be created and returned in the case the <b>set</b> is <i>null</i>.
   * 
   * @param set the original array of PropertyValues. It is left intact.
   * @param propName the Name of the PropertyValue
   * @param propValue the Value of the PropertyValue
   * @return a copy of the (modified) PropertyValue[] array <b>set</b>
   */
   public static PropertyValue[] setProperty(PropertyValue[] set, String propName, Object propValue){
     PropertyValue[] result;
     // replace Value, if exists
     result = set;
     boolean wasSet = false;
     for (int i = 0; result!=null && i < set.length; i++)
     {
       if (result[i].Name.equals(propName)){
         result[i].Value = propValue;
         wasSet = true;
       }
     }
     
     if (wasSet)
       return result;
     
     
     // increase the array, add new Name and its Value
     int lastI = 0;
     if (set==null){
       result = new PropertyValue[1];
       result[lastI] = new PropertyValue();
     } else {
       result = new PropertyValue[set.length+1];
       lastI = result.length-1;
       for (int i = 0; i < set.length; i++)
       {
         result[i] = set[i];
       }
       result[lastI] = new PropertyValue();
     }
     
     result[lastI].Name = propName;
     result[lastI].Value = propValue;
     
     return result;
   }

   
// * <b>null</b> is returned if no value for the specified name was set. It is important to have the <b>null</b> 
// * as an indication that the property is not set. Other objects (like a dummy "new Object()") may cause unexpected 
// * behaviour when used together with UNO. For example, "ItemDescriptorContainer" set to a dummy Object() value may 
// * cause the  StackOverflowException.

   /**
    * Read and returns the value of the property <b>propName</b> set in the <b>values</b> PropertyValue[]. 
    * 
    * @param values
    * @param propName
    * @return value of the PropertyValue.Value or <b>new Object()<\b>, if the value is not defined
    */
   public static Object getProperty(PropertyValue[] values, String propName, Object def){
     for (int i = 0; i < values.length; i++)
     {
       if (values[i].Name.equals(propName)){
         return values[i].Value;
       }
     }
     return def;
   }

   /**
    * query property from a ConfigThingy. An empty string is retured, if the property is not set. 
    * 
    * @param ct
    * @param label
    * @return
    */
   public static String getProperty(ConfigThingy ct, String label, String def)
   {
     String result = def;
     ConfigThingy x = null;
     try
     {
       result = ct.query(label).toString();
       x = ct.getByChild(label);
     }
     catch (NodeNotFoundException e)
     {
       // Logger.error(e);
       return def;
     }
     
     // the attribute (like "POSITION") was not set 
     if (result.equals("<query results>"))
       return def;
     
     return result;
   }

   
}