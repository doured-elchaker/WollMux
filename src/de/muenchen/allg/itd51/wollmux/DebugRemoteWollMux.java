package de.muenchen.allg.itd51.wollmux;

import com.sun.star.bridge.UnoUrlResolver;
import com.sun.star.bridge.XUnoUrlResolver;
import com.sun.star.comp.helper.Bootstrap;
import com.sun.star.lang.XMultiServiceFactory;
import com.sun.star.uno.UnoRuntime;
import com.sun.star.uno.XComponentContext;

import de.muenchen.allg.afid.UNO;
import de.muenchen.allg.itd51.wollmux.comp.WollMux;

/**
 * Über diese Klasse kann der WollMux zum Debuggen in der lokalen JVM gestartet
 * werden, ohne dass die Extension in OpenOffice/LibreOffice installiert ist. Bisher
 * haben wir für diesen Zweck die WollMuxBar mit der Konfigurationsoption
 * ALLOW_EXTERNAL_WOLLMUX "true" verwendet. Die WollMuxBar setzt aber eine
 * existierende WollMux-Konfiguration voraus. Zukünftig wollen wir den WollMux auch
 * ohne eine existierende Konfiguration starten können. Deshalb wird die Funktion
 * hiermit als eigenständige Klasse/main-Methode angeboten. Diese Klasse/main-Methode
 * benötigt keinen Konfiguration.
 * 
 * Verwendung: Diese Main-Methode einfach per Debugger starten.
 * 
 * @author Christoph
 * 
 */
public class DebugRemoteWollMux
{

  /**
   * @param args
   * @throws Exception
   */
  public static void main(String[] args) throws Exception
  {
    XMultiServiceFactory factory = null;
    XComponentContext ctx = null;
    // try
    // {
    // ctx = Bootstrap.bootstrap();
    // factory =
    // (XMultiServiceFactory) UnoRuntime.queryInterface(
    // XMultiServiceFactory.class, ctx.getServiceManager());
    // }
    // catch (Throwable x)
    {
      // whoops, that failed - can we get an urp connection to a
      // running OOo/LibO at the usual port (8100)?
      try
      {
        ctx = Bootstrap.createInitialComponentContext(null);
        // create a connector, so that it can contact the office
        XUnoUrlResolver urlResolver = UnoUrlResolver.create(ctx);
        Object initialObject =
          urlResolver.resolve("uno:socket,host=localhost,port=8100;urp;StarOffice.ServiceManager");
        factory =
          (XMultiServiceFactory) UnoRuntime.queryInterface(
            XMultiServiceFactory.class, initialObject);
        ctx =
          UnoRuntime.queryInterface(XComponentContext.class,
            UNO.getProperty(factory, "DefaultContext"));
      }
      catch (Exception y)
      {
        WollMuxSingleton.showInfoModal("Connection Error",
          "Could not connect to OpenOffice/LibreOffice");
        return;
      }
    }

    UNO.init(ctx.getServiceManager());

    new WollMux(ctx);
  }
}
