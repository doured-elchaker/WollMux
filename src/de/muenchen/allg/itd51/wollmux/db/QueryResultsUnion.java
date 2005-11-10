/*
* Dateiname: QueryResultsUnion.java
* Projekt  : WollMux
* Funktion : Stellt die Vereinigung 2er QueryResults als QueryResults zur Verf�gung
* 
* Copyright: Landeshauptstadt M�nchen
*
* �nderungshistorie:
* Datum      | Wer | �nderungsgrund
* -------------------------------------------------------------------
* 07.11.2005 | BNK | Erstellung
* -------------------------------------------------------------------
*
* @author Matthias Benkmann (D-III-ITD 5.1)
* @version 1.0
* 
*/
package de.muenchen.allg.itd51.wollmux.db;

import java.util.Iterator;

/**
 * Stellt die Vereinigung 2er QueryResults als QueryResults zur Verf�gung.
 * @author Matthias Benkmann (D-III-ITD 5.1)
 */
public class QueryResultsUnion implements QueryResults
{
  private QueryResults results1;
  private QueryResults results2;
  
  /**
   * Erzeugt eine neue Vereinigung, die die Resultate von res1 und die
   * Resultate von res2 enth�lt in undefinierter Reihenfolge. 
   */
  public QueryResultsUnion(QueryResults res1, QueryResults res2)
  {
    results1 = res1;
    results2 = res2;
  }

  /* (non-Javadoc)
   * @see de.muenchen.allg.itd51.wollmux.db.QueryResults#size()
   */
  public int size()
  {
    return results1.size() + results2.size();
  }

  /* (non-Javadoc)
   * @see de.muenchen.allg.itd51.wollmux.db.QueryResults#iterator()
   */
  public Iterator iterator()
  {
    return new UnionIterator(results1.iterator(), results2.iterator());
  }

  /* (non-Javadoc)
   * @see de.muenchen.allg.itd51.wollmux.db.QueryResults#isEmpty()
   */
  public boolean isEmpty()
  {
    return results1.isEmpty() && results2.isEmpty();
  }

  private static class UnionIterator implements Iterator
  {
    private Iterator iter1;
    private Iterator iter2;
    private Iterator iter;
    
    public UnionIterator(Iterator iter1, Iterator iter2)
    {
      this.iter1 = iter1;
      this.iter2 = iter2;
      this.iter = iter1;
    }

    public void remove()
    {
      throw new UnsupportedOperationException();
    }

    public boolean hasNext()
    {
      if (!iter.hasNext())
      {
        if (iter == iter1) iter = iter2;
      }
      return iter.hasNext();
    }

    public Object next()
    {
      this.hasNext(); //weiterschalten auf iter2 falls n�tig
      return iter.next();
    }
  }
  
}