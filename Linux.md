The installers will run and install on `Wine`, but you will have to use `mono` to run the programs themselves.

## Mono-Compatible programs:

- [ ] GitUpdater
- [x] SteamPlaceholder
- [ ] YTVL
- [x] InfoManager
- [x] CMDLauncher
- [x] ClipboardManager
- [x] ClipboardSaver
- [ ] BasicBrowser
- [ ] Dashy

## Errors:

### GitUpdater

```
Unhandled Exception:
System.IO.FileNotFoundException: Could not load file or assembly 'PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35' or one of its dependencies.
File name: 'PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35'
  at GitUpdater.My.MyProject+MyForms.get_GitUpdater () [0x00000] in <filename unknown>:0 
  at GitUpdater.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at GitUpdater.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.IO.FileNotFoundException: Could not load file or assembly 'PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35' or one of its dependencies.
File name: 'PresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35'
  at GitUpdater.My.MyProject+MyForms.get_GitUpdater () [0x00000] in <filename unknown>:0 
  at GitUpdater.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at GitUpdater.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
```
- [ ] Will be fixed soon.

### YTVL

```
libgluezilla not found. To have webbrowser support, you need libgluezilla installed
libgluezilla not found. To have webbrowser support, you need libgluezilla installed

Unhandled Exception:
System.InvalidOperationException: WinForms_SeeInnerException ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.NullReferenceException: Object reference not set to an instance of an object
  at System.Windows.Forms.WebBrowser.Refresh (WebBrowserRefreshOption opt) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.WebBrowser.Refresh () [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Control.SetVisibleCore (Boolean value) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Control.set_Visible (Boolean value) [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (System.Reflection.MonoMethod,object,object[],System.Exception&)
  at System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.Reflection.MonoProperty.SetValue (System.Object obj, System.Object value, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] index, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.Reflection.PropertyInfo.SetValue (System.Object obj, System.Object value, System.Object[] index) [0x00000] in <filename unknown>:0 
  at System.ComponentModel.ComponentResourceManager.ApplyResources (System.Object value, System.String objectName, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.ComponentModel.ComponentResourceManager.ApplyResources (System.Object value, System.String objectName) [0x00000] in <filename unknown>:0 
  at YTVL.YTVL.InitializeComponent () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) YTVL.YTVL:InitializeComponent ()
  at YTVL.YTVL..ctor () [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoCMethod:InternalInvoke (System.Reflection.MonoCMethod,object,object[],System.Exception&)
  at System.Reflection.MonoCMethod.InternalInvoke (System.Object obj, System.Object[] parameters) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at YTVL.My.MyProject+MyForms.Create__Instance__[YTVL] (YTVL.YTVL Instance) [0x00000] in <filename unknown>:0 
  at YTVL.My.MyProject+MyForms.get_YTVL () [0x00000] in <filename unknown>:0 
  at YTVL.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at YTVL.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.InvalidOperationException: WinForms_SeeInnerException ---> System.Reflection.TargetInvocationException: Exception has been thrown by the target of an invocation. ---> System.NullReferenceException: Object reference not set to an instance of an object
  at System.Windows.Forms.WebBrowser.Refresh (WebBrowserRefreshOption opt) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.WebBrowser.Refresh () [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Control.SetVisibleCore (Boolean value) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Control.set_Visible (Boolean value) [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoMethod:InternalInvoke (System.Reflection.MonoMethod,object,object[],System.Exception&)
  at System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at System.Reflection.MonoMethod.Invoke (System.Object obj, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] parameters, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.Reflection.MonoProperty.SetValue (System.Object obj, System.Object value, BindingFlags invokeAttr, System.Reflection.Binder binder, System.Object[] index, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.Reflection.PropertyInfo.SetValue (System.Object obj, System.Object value, System.Object[] index) [0x00000] in <filename unknown>:0 
  at System.ComponentModel.ComponentResourceManager.ApplyResources (System.Object value, System.String objectName, System.Globalization.CultureInfo culture) [0x00000] in <filename unknown>:0 
  at System.ComponentModel.ComponentResourceManager.ApplyResources (System.Object value, System.String objectName) [0x00000] in <filename unknown>:0 
  at YTVL.YTVL.InitializeComponent () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) YTVL.YTVL:InitializeComponent ()
  at YTVL.YTVL..ctor () [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoCMethod:InternalInvoke (System.Reflection.MonoCMethod,object,object[],System.Exception&)
  at System.Reflection.MonoCMethod.InternalInvoke (System.Object obj, System.Object[] parameters) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at YTVL.My.MyProject+MyForms.Create__Instance__[YTVL] (YTVL.YTVL Instance) [0x00000] in <filename unknown>:0 
  at YTVL.My.MyProject+MyForms.get_YTVL () [0x00000] in <filename unknown>:0 
  at YTVL.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at YTVL.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
```

### BasicBrowser

```
Unhandled Exception:
System.InvalidOperationException: WinForms_SeeInnerException ---> System.ArgumentOutOfRangeException: StartIndex can not be less than zero
Parameter name: startIndex
  at System.String.Remove (Int32 startIndex) [0x00000] in <filename unknown>:0 
  at BasicBrowser.BasicBrowser.MenuStripViewOpacityCbx_TextChanged (System.Object sender, System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripItem.OnTextChanged (System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripItem.set_Text (System.String value) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripControlHost.set_Text (System.String value) [0x00000] in <filename unknown>:0 
  at BasicBrowser.BasicBrowser.InitializeComponent () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) BasicBrowser.BasicBrowser:InitializeComponent ()
  at BasicBrowser.BasicBrowser..ctor () [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoCMethod:InternalInvoke (System.Reflection.MonoCMethod,object,object[],System.Exception&)
  at System.Reflection.MonoCMethod.InternalInvoke (System.Object obj, System.Object[] parameters) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at BasicBrowser.My.MyProject+MyForms.Create__Instance__[BasicBrowser] (BasicBrowser.BasicBrowser Instance) [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyProject+MyForms.get_BasicBrowser () [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.InvalidOperationException: WinForms_SeeInnerException ---> System.ArgumentOutOfRangeException: StartIndex can not be less than zero
Parameter name: startIndex
  at System.String.Remove (Int32 startIndex) [0x00000] in <filename unknown>:0 
  at BasicBrowser.BasicBrowser.MenuStripViewOpacityCbx_TextChanged (System.Object sender, System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripItem.OnTextChanged (System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripItem.set_Text (System.String value) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.ToolStripControlHost.set_Text (System.String value) [0x00000] in <filename unknown>:0 
  at BasicBrowser.BasicBrowser.InitializeComponent () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) BasicBrowser.BasicBrowser:InitializeComponent ()
  at BasicBrowser.BasicBrowser..ctor () [0x00000] in <filename unknown>:0 
  at (wrapper managed-to-native) System.Reflection.MonoCMethod:InternalInvoke (System.Reflection.MonoCMethod,object,object[],System.Exception&)
  at System.Reflection.MonoCMethod.InternalInvoke (System.Object obj, System.Object[] parameters) [0x00000] in <filename unknown>:0 
  --- End of inner exception stack trace ---
  at BasicBrowser.My.MyProject+MyForms.Create__Instance__[BasicBrowser] (BasicBrowser.BasicBrowser Instance) [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyProject+MyForms.get_BasicBrowser () [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyApplication.OnCreateMainForm () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at BasicBrowser.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
```

### Dashy

```
Unhandled Exception:
System.NotImplementedException: The requested feature is not implemented.
  at Dashy.Dashy.TimerMonitorSlow_Tick (System.Object sender, System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Timer.OnTick (System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Timer.FireTick () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) System.Windows.Forms.Timer:FireTick ()
  at System.Windows.Forms.XplatUIX11.CheckTimers (System.Collections.ArrayList timers, DateTime now) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.UpdateMessageQueue (System.Windows.Forms.XEventQueue queue, Boolean allowIdle) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.UpdateMessageQueue (System.Windows.Forms.XEventQueue queue) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.GetMessage (System.Object queue_id, System.Windows.Forms.MSG& msg, IntPtr handle, Int32 wFilterMin, Int32 wFilterMax) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUI.GetMessage (System.Object queue_id, System.Windows.Forms.MSG& msg, IntPtr hWnd, Int32 wFilterMin, Int32 wFilterMax) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.RunLoop (Boolean Modal, System.Windows.Forms.ApplicationContext context) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.Run (System.Windows.Forms.ApplicationContext context) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.Run (System.Windows.Forms.Form mainForm) [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at Dashy.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
[ERROR] FATAL UNHANDLED EXCEPTION: System.NotImplementedException: The requested feature is not implemented.
  at Dashy.Dashy.TimerMonitorSlow_Tick (System.Object sender, System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Timer.OnTick (System.EventArgs e) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Timer.FireTick () [0x00000] in <filename unknown>:0 
  at (wrapper remoting-invoke-with-check) System.Windows.Forms.Timer:FireTick ()
  at System.Windows.Forms.XplatUIX11.CheckTimers (System.Collections.ArrayList timers, DateTime now) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.UpdateMessageQueue (System.Windows.Forms.XEventQueue queue, Boolean allowIdle) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.UpdateMessageQueue (System.Windows.Forms.XEventQueue queue) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUIX11.GetMessage (System.Object queue_id, System.Windows.Forms.MSG& msg, IntPtr handle, Int32 wFilterMin, Int32 wFilterMax) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.XplatUI.GetMessage (System.Object queue_id, System.Windows.Forms.MSG& msg, IntPtr hWnd, Int32 wFilterMin, Int32 wFilterMax) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.RunLoop (Boolean Modal, System.Windows.Forms.ApplicationContext context) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.Run (System.Windows.Forms.ApplicationContext context) [0x00000] in <filename unknown>:0 
  at System.Windows.Forms.Application.Run (System.Windows.Forms.Form mainForm) [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.OnRun () [0x00000] in <filename unknown>:0 
  at Microsoft.VisualBasic.ApplicationServices.WindowsFormsApplicationBase.Run (System.String[] commandLine) [0x00000] in <filename unknown>:0 
  at Dashy.My.MyApplication.Main (System.String[] Args) [0x00000] in <filename unknown>:0 
```
