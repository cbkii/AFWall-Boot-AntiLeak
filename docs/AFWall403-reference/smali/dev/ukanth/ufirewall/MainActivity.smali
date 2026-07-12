.class public Ldev/ukanth/ufirewall/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/MainActivity$RootCheck;,
        Ldev/ukanth/ufirewall/MainActivity$GetAppList;,
        Ldev/ukanth/ufirewall/MainActivity$RunApply;,
        Ldev/ukanth/ufirewall/MainActivity$PurgeTask;,
        Ldev/ukanth/ufirewall/MainActivity$OnUnhandledKeyEventListenerWrapper;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLUMN:I = 0x2

.field private static final DEFAULT_VIEW_LIMIT:I = 0x4

.field private static final MY_PERMISSIONS_REQUEST_READ_STORAGE:I = 0x2

.field private static final MY_PERMISSIONS_REQUEST_WRITE_STORAGE:I = 0x1

.field private static final MY_PERMISSIONS_REQUEST_WRITE_STORAGE_ASSET:I = 0x3

.field private static final PERMISSION_BLUETOOTH:I = 0x4

.field private static final PERMISSION_NOTIFICATION:I = 0x5

.field private static final PREFERENCE_RESULT:I = 0x4b5

.field private static final SHOW_ABOUT_RESULT:I = 0x4b0

.field private static final SHOW_CUSTOM_SCRIPT:I = 0x4b1

.field private static final SHOW_LOGS_ACTIVITY:I = 0x4b3

.field private static final SHOW_RULES_ACTIVITY:I = 0x4b2

.field private static final VERIFY_CHECK:I = 0x2710

.field public static dirty:Z = false


# instance fields
.field private currentUI:I

.field private filterTextWatcher:Landroid/text/TextWatcher;

.field private getAppList:Ldev/ukanth/ufirewall/MainActivity$GetAppList;

.field private index:I

.field private initDone:I

.field private listview:Landroid/widget/ListView;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mainMenu:Landroid/view/Menu;

.field private mlocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private purgeTask:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

.field private runApply:Ldev/ukanth/ufirewall/MainActivity$RunApply;

.field private runProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private selectedColumns:I

.field private spinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private themeRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private toastReceiver:Landroid/content/BroadcastReceiver;

.field private top:I

.field private uiFilter4:Landroid/content/IntentFilter;

.field private uiFilter6:Landroid/content/IntentFilter;

.field private uiProgressReceiver4:Landroid/content/BroadcastReceiver;

.field private uiProgressReceiver6:Landroid/content/BroadcastReceiver;

.field private uiRefreshReceiver:Landroid/content/BroadcastReceiver;

.field private view:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$03x_dCjO9oFwtl82CM_TOPeXkiY(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showImportDialog$10(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6gubvN20pUVnMF4ybQDa0DKwHmw(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$confirmDisable$14(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7qQFPBJ9TFFkDqCBuRv8iKjwa74(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->lambda$copyOldExportedData$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$9iTK94eVLmRWrbi0Ws2akzaE0QY(Ldev/ukanth/ufirewall/MainActivity;ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/ukanth/ufirewall/MainActivity;->lambda$cloneColumn$21(ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B73GP4ojgzj8sHqD2_-wEWeVPRQ(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/MainActivity;->lambda$selectAction$15(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GeR7-ZGxwaUxDKobiQfyn2kNjsY(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$confirmDisable$13(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HSIbTaUIY7FVm3g2lWZHiryf2tk(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showExportAllWarningDialog$12(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HtOYi3y4wFc7B6DPeZZYUAewrC0(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showRootNotFoundMessage$2(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Iy3eqU-0Zy79zKFOMVj8e1F4tw8(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;[Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Ldev/ukanth/ufirewall/MainActivity;->lambda$cloneColumn$23(Ljava/lang/String;[Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L0yWsswnUBurbz5R4DSM1So3Fp0(Ldev/ukanth/ufirewall/MainActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showImportDialog$8(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M4EwaIc5bcG7Rv9p_0QP_xF9jAw(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$onKeyUp$17(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S1xwh60tD0aOBxUw8r4yeZeh7q4(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showExportDialog$11(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SfhM9jCEtOWQvAfW8Sw1hOIhpRc(Ldev/ukanth/ufirewall/MainActivity;Landroid/view/Menu;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$menuSetApplyOrSave$3(Landroid/view/Menu;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$e7MnediNcVMf5UH2bqZ6pwszGgE(Ldev/ukanth/ufirewall/MainActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->lambda$showImportDialog$9(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iZFM3hfHYKnq4CUTKMPKHo8KDdg(Ldev/ukanth/ufirewall/MainActivity;ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Ldev/ukanth/ufirewall/MainActivity;->lambda$selectActionConfirmation$25(ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$j58zO2EC_C2GP5xiE9iL9Cl9zWE(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->lambda$copyOldExportedDataAsync$7(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k8cY9y8gj4BBgzST-AP4tYkK6g4(Ldev/ukanth/ufirewall/MainActivity;ILcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/MainActivity;->lambda$selectActionConfirmation$19(ILcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lgwE6SVD0SkMqRIQ7Zw_KDGPpaA(Ldev/ukanth/ufirewall/MainActivity;ILandroid/view/KeyEvent;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/MainActivity;->lambda$onKeyUp$18(ILandroid/view/KeyEvent;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xN0YHEP3YPLZSownWlnWVu8uKG4(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->lambda$copyOldExportedData$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentUI(Ldev/ukanth/ufirewall/MainActivity;)I
    .locals 0

    iget p0, p0, Ldev/ukanth/ufirewall/MainActivity;->currentUI:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSwipeLayout(Ldev/ukanth/ufirewall/MainActivity;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetplsWait(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 0

    iget-object p0, p0, Ldev/ukanth/ufirewall/MainActivity;->runProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetselectedColumns(Ldev/ukanth/ufirewall/MainActivity;)I
    .locals 0

    iget p0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputplsWait(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputrunProgress(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->runProgress:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mdisableFirewall(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->disableFirewall()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitTheme(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->initTheme()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshHeader(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->refreshHeader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterNetworkObserver(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerNetworkObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectFilterGroup(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->selectFilterGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowApplications(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->showApplications(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRootNotFoundMessage(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showRootNotFoundMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartRootShell(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->startRootShell()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSelectedColumns(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->updateSelectedColumns()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 120
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->initDone:I

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->currentUI:I

    const/4 v0, 0x2

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    return-void
.end method

.method static synthetic access$001(Ldev/ukanth/ufirewall/MainActivity;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private addColumns(I)V
    .locals 1

    .line 791
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 792
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private applyOrSaveRules()V
    .locals 4

    .line 1692
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1693
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 1695
    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ldev/ukanth/ufirewall/Api;->generateRules(Landroid/content/Context;Ljava/util/List;Z)Ldev/ukanth/ufirewall/Api$RuleDataSet;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1698
    invoke-static {v1, v2, v3}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    .line 1699
    sget v0, Ldev/ukanth/ufirewall/R$string;->rules_saved:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1700
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    return-void

    .line 1704
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    .line 1705
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$RunApply;

    invoke-direct {v0, p0, p0}, Ldev/ukanth/ufirewall/MainActivity$RunApply;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->runApply:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    .line 1706
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private checkPermissions()V
    .locals 2

    .line 254
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 255
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 264
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private checkPreferences()V
    .locals 4

    .line 919
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 921
    sget-object v1, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v2, ""

    const-string v3, "BlockMode"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "whitelist"

    .line 922
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 926
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private clearAll()V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1927
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1929
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1931
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1933
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1934
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 1935
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    .line 1936
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    .line 1937
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    .line 1938
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    .line 1939
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    .line 1940
    iput-boolean v2, v4, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    const/4 v4, 0x1

    .line 1942
    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1944
    :cond_1
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method private clearNotification()V
    .locals 2

    const-string v0, "notification"

    .line 757
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x64

    .line 758
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private cloneColumn(Ljava/lang/String;)V
    .locals 8

    .line 2062
    sget v0, Ldev/ukanth/ufirewall/R$string;->lan:I

    .line 2063
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Ldev/ukanth/ufirewall/R$string;->wifi:I

    .line 2064
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Ldev/ukanth/ufirewall/R$string;->data:I

    .line 2065
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v0, Ldev/ukanth/ufirewall/R$string;->vpn:I

    .line 2066
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Ldev/ukanth/ufirewall/R$string;->roam:I

    .line 2067
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v0, Ldev/ukanth/ufirewall/R$string;->tether:I

    .line 2068
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Ldev/ukanth/ufirewall/R$string;->tor:I

    .line 2069
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 2071
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 2072
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 2073
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 2074
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 2075
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 2076
    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2077
    invoke-virtual {v1, p1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->from:I

    .line 2101
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda3;-><init>()V

    .line 2102
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2103
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private copyColumns(II)V
    .locals 10

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 2108
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 2110
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2112
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_26

    .line 2114
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 2115
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    const/4 v6, 0x1

    if-eq v4, v5, :cond_25

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz p2, :cond_6

    if-eq p2, v6, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v5, :cond_1

    goto/16 :goto_1

    .line 2279
    :cond_1
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto/16 :goto_1

    .line 2276
    :cond_2
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto/16 :goto_1

    .line 2273
    :cond_3
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto/16 :goto_1

    .line 2270
    :cond_4
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto/16 :goto_1

    .line 2267
    :cond_5
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto/16 :goto_1

    .line 2264
    :cond_6
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto/16 :goto_1

    :pswitch_1
    if-eqz p2, :cond_c

    if-eq p2, v6, :cond_b

    if-eq p2, v9, :cond_a

    if-eq p2, v8, :cond_9

    if-eq p2, v7, :cond_8

    if-eq p2, v4, :cond_7

    goto/16 :goto_1

    .line 2257
    :cond_7
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto/16 :goto_1

    .line 2252
    :cond_8
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto/16 :goto_1

    .line 2249
    :cond_9
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto/16 :goto_1

    .line 2246
    :cond_a
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto/16 :goto_1

    .line 2243
    :cond_b
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto/16 :goto_1

    .line 2240
    :cond_c
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto/16 :goto_1

    :pswitch_2
    if-eqz p2, :cond_12

    if-eq p2, v6, :cond_11

    if-eq p2, v9, :cond_10

    if-eq p2, v8, :cond_f

    if-eq p2, v5, :cond_e

    if-eq p2, v4, :cond_d

    goto/16 :goto_1

    .line 2233
    :cond_d
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto/16 :goto_1

    .line 2230
    :cond_e
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto/16 :goto_1

    .line 2225
    :cond_f
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto/16 :goto_1

    .line 2222
    :cond_10
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto/16 :goto_1

    .line 2219
    :cond_11
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto/16 :goto_1

    .line 2216
    :cond_12
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto/16 :goto_1

    :pswitch_3
    if-eqz p2, :cond_18

    if-eq p2, v6, :cond_17

    if-eq p2, v9, :cond_16

    if-eq p2, v7, :cond_15

    if-eq p2, v5, :cond_14

    if-eq p2, v4, :cond_13

    goto/16 :goto_1

    .line 2209
    :cond_13
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto/16 :goto_1

    .line 2206
    :cond_14
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto/16 :goto_1

    .line 2203
    :cond_15
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto/16 :goto_1

    .line 2198
    :cond_16
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto/16 :goto_1

    .line 2195
    :cond_17
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto/16 :goto_1

    .line 2192
    :cond_18
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto/16 :goto_1

    :pswitch_4
    if-eqz p2, :cond_1e

    if-eq p2, v6, :cond_1d

    if-eq p2, v8, :cond_1c

    if-eq p2, v7, :cond_1b

    if-eq p2, v5, :cond_1a

    if-eq p2, v4, :cond_19

    goto/16 :goto_1

    .line 2185
    :cond_19
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto/16 :goto_1

    .line 2182
    :cond_1a
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto/16 :goto_1

    .line 2179
    :cond_1b
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto/16 :goto_1

    .line 2176
    :cond_1c
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto :goto_1

    .line 2171
    :cond_1d
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto :goto_1

    .line 2168
    :cond_1e
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto :goto_1

    :pswitch_5
    if-eqz p2, :cond_24

    if-eq p2, v9, :cond_23

    if-eq p2, v8, :cond_22

    if-eq p2, v7, :cond_21

    if-eq p2, v5, :cond_20

    if-eq p2, v4, :cond_1f

    goto :goto_1

    .line 2161
    :cond_1f
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto :goto_1

    .line 2158
    :cond_20
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto :goto_1

    .line 2155
    :cond_21
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto :goto_1

    .line 2152
    :cond_22
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto :goto_1

    .line 2149
    :cond_23
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto :goto_1

    .line 2144
    :cond_24
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto :goto_1

    :pswitch_6
    packed-switch p2, :pswitch_data_1

    goto :goto_1

    .line 2137
    :pswitch_7
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    goto :goto_1

    .line 2134
    :pswitch_8
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto :goto_1

    .line 2131
    :pswitch_9
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto :goto_1

    .line 2128
    :pswitch_a
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto :goto_1

    .line 2125
    :pswitch_b
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto :goto_1

    .line 2122
    :pswitch_c
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 2287
    :cond_25
    :goto_1
    invoke-virtual {p0, v6}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2289
    :cond_26
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_27
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private copyOldExportedData()V
    .locals 1

    .line 1266
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasCopyOld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1267
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda24;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->copyOldExportedDataAsync(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1275
    :cond_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showImportDialog()V

    :goto_0
    return-void
.end method

.method private copyOldExportedDataAsync(Ljava/lang/Runnable;)V
    .locals 3

    .line 1283
    :try_start_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Migrating Files"

    .line 1284
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const-string v1, "Copying backup files to new location..."

    .line 1285
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1286
    invoke-virtual {v0, v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->progress(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1287
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1288
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Could not show progress dialog due to MaterialDialog compatibility issue"

    .line 1290
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const-string v0, "Migrating backup files to new location..."

    .line 1292
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1298
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p1}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda10;-><init>(Ldev/ukanth/ufirewall/MainActivity;Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1336
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private disableFirewall()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1145
    invoke-static {p0, v1, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    .line 1146
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->menuSetApplyOrSave(Landroid/view/Menu;Z)V

    return-void
.end method

.method private disableOrEnable()V
    .locals 2

    .line 1150
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1151
    invoke-static {p0, v0, v1}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    if-eqz v0, :cond_0

    .line 1153
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->applyOrSaveRules()V

    goto :goto_0

    .line 1155
    :cond_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->confirmDisable()V

    goto :goto_0

    .line 1158
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->purgeRules()V

    :goto_0
    return-void
.end method

.method private filterApps(I)V
    .locals 4

    .line 545
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 547
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object v1

    if-ltz p1, :cond_2

    .line 549
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    if-eqz v2, :cond_0

    .line 551
    iget v3, v2, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appType:I

    if-ne v3, p1, :cond_0

    .line 552
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 556
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 558
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    .line 561
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    if-eqz v1, :cond_5

    .line 564
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 566
    :try_start_0
    new-instance p1, Ldev/ukanth/ufirewall/util/PackageComparator;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/util/PackageComparator;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    :goto_2
    iget p1, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_4

    .line 571
    new-instance p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p1, p0, v0, v1, v2}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;Z)V

    goto :goto_3

    .line 573
    :cond_4
    new-instance p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;)V

    :goto_3
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 575
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 576
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->index:I

    iget v1, p0, Ldev/ukanth/ufirewall/MainActivity;->top:I

    .line 578
    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_5
    return-void
.end method

.method private hideColumns(I)V
    .locals 1

    .line 797
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/16 v0, 0x8

    .line 798
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTextWatcher()V
    .locals 1

    .line 379
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$4;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$4;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private initTheme()V
    .locals 3

    .line 362
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getSelectedTheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "LHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 370
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setTheme(I)V

    goto :goto_1

    .line 367
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setTheme(I)V

    goto :goto_1

    .line 364
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setTheme(I)V

    goto :goto_1

    .line 373
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setTheme(I)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_3
        0x44 -> :sswitch_2
        0x4c -> :sswitch_1
        0x12647 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$cloneColumn$21(ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 2089
    invoke-direct {p0, p1, p4}, Ldev/ukanth/ufirewall/MainActivity;->copyColumns(II)V

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$cloneColumn$22(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 2096
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$cloneColumn$23(Ljava/lang/String;[Ljava/lang/String;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    .line 2080
    new-instance p4, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {p4, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p6, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 2081
    invoke-virtual {p4, p6}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 p4, 0x1

    .line 2082
    invoke-virtual {p1, p4}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget p6, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 2083
    invoke-virtual {p1, p6}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget p6, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 2084
    invoke-virtual {p1, p6}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2085
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {p2, p0, p5}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda11;-><init>(Ldev/ukanth/ufirewall/MainActivity;I)V

    const/4 p5, -0x1

    .line 2086
    invoke-virtual {p1, p5, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->clone:I

    .line 2094
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {p2, p3}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;)V

    .line 2096
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2097
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return p4
.end method

.method static synthetic lambda$cloneColumn$24(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 2102
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$confirmDisable$13(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 1561
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->purgeRules()V

    .line 1562
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Ldev/ukanth/ufirewall/Api;->updateNotification(ZLandroid/content/Context;)V

    .line 1563
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$confirmDisable$14(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 1

    .line 1566
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p2, v0, v0}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    .line 1567
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$copyOldExportedData$4()V
    .locals 0

    .line 1270
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showImportDialog()V

    return-void
.end method

.method private synthetic lambda$copyOldExportedData$5()V
    .locals 1

    .line 1269
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda5;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$copyOldExportedDataAsync$6(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1328
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    .line 1332
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$copyOldExportedDataAsync$7(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V
    .locals 11

    const-string v0, "AFWall"

    const-string v1, "Migration output: "

    const-string v2, "Migration script failed with code: "

    const-string v3, "Invoking migration script "

    const-string v4, "cp -R "

    const-string v5, "File migration interrupted: "

    const-string v6, "File migration rejected: "

    .line 1301
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "//afwall//"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1304
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/topjohnwu/superuser/Shell;->cmd([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v3

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    move-result-object v3

    .line 1308
    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v4

    if-nez v4, :cond_0

    const-string v1, "Migration script completed successfully"

    .line 1309
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1310
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->hasCopyOldExports(Z)Z

    goto :goto_0

    .line 1312
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/topjohnwu/superuser/Shell$Result;->getOut()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :goto_0
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1320
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_1

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v2, "Error during file migration"

    .line 1323
    invoke-static {v0, v2, v1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1327
    :goto_1
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    :goto_2
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1317
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1327
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1335
    throw v0
.end method

.method private synthetic lambda$menuSetApplyOrSave$3(Landroid/view/Menu;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1122
    sget p2, Ldev/ukanth/ufirewall/R$id;->menu_toggle:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$string;->fw_disabled:I

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1123
    sget p2, Ldev/ukanth/ufirewall/R$id;->menu_apply:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->applyrules:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1124
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    goto :goto_0

    .line 1126
    :cond_0
    sget p2, Ldev/ukanth/ufirewall/R$id;->menu_toggle:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$string;->fw_enabled:I

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1127
    sget p2, Ldev/ukanth/ufirewall/R$id;->menu_apply:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$string;->saverules:I

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1128
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    sget p2, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 226
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->assertBinaries(Landroid/content/Context;Z)Z

    return-void
.end method

.method private synthetic lambda$onKeyUp$17(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 2008
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->applyOrSaveRules()V

    .line 2009
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onKeyUp$18(ILandroid/view/KeyEvent;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    const/4 p4, 0x0

    .line 2012
    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    const/4 p4, 0x0

    .line 2013
    sput-object p4, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 2014
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    .line 2017
    invoke-static {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->access$001(Ldev/ukanth/ufirewall/MainActivity;ILandroid/view/KeyEvent;)Z

    .line 2018
    invoke-virtual {p3}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$selectAction$15(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 1750
    :cond_0
    sget p2, Ldev/ukanth/ufirewall/R$string;->unselect_all:I

    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Ldev/ukanth/ufirewall/MainActivity;->selectActionConfirmation(Ljava/lang/String;I)V

    goto :goto_0

    .line 1747
    :cond_1
    sget p1, Ldev/ukanth/ufirewall/R$string;->legend_clone:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->cloneColumn(Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    :cond_2
    sget p1, Ldev/ukanth/ufirewall/R$string;->reverse_all:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->selectActionConfirmation(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$selectAction$16(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 1754
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$selectActionConfirmation$19(ILcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    if-eqz p1, :cond_1

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2052
    :cond_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->clearAll()V

    goto :goto_0

    .line 2049
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->selectRevert()V

    .line 2054
    :goto_0
    invoke-virtual {p2}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$selectActionConfirmation$20(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 2057
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$selectActionConfirmation$25(ILcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    const/4 p3, 0x1

    if-nez p4, :cond_6

    .line 2304
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    if-ne p1, p4, :cond_0

    .line 2305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->wifi:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2306
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAllWifi(Z)V

    goto/16 :goto_1

    .line 2307
    :cond_0
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    if-ne p1, p4, :cond_1

    .line 2308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->data:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2309
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAll3G(Z)V

    goto/16 :goto_1

    .line 2310
    :cond_1
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    if-ne p1, p4, :cond_2

    .line 2311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->roam:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2312
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAllRoam(Z)V

    goto/16 :goto_1

    .line 2313
    :cond_2
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    if-ne p1, p4, :cond_3

    .line 2314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->vpn:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2315
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAllVPN(Z)V

    goto/16 :goto_1

    .line 2316
    :cond_3
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    if-ne p1, p4, :cond_4

    .line 2317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->tether:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2318
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAlltether(Z)V

    goto/16 :goto_1

    .line 2319
    :cond_4
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    if-ne p1, p4, :cond_5

    .line 2320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->lan:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2321
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAllLAN(Z)V

    goto/16 :goto_1

    .line 2322
    :cond_5
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    if-ne p1, p4, :cond_15

    .line 2323
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p4, Ldev/ukanth/ufirewall/R$string;->tor:I

    invoke-virtual {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2324
    invoke-direct {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->selectAllTor(Z)V

    goto/16 :goto_1

    :cond_6
    if-ne p4, p3, :cond_e

    .line 2327
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    if-ne p1, p4, :cond_7

    .line 2328
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->wifi:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2329
    :cond_7
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    if-ne p1, p4, :cond_8

    .line 2330
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->data:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2331
    :cond_8
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    if-ne p1, p4, :cond_9

    .line 2332
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->roam:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2333
    :cond_9
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    if-ne p1, p4, :cond_a

    .line 2334
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->vpn:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2335
    :cond_a
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    if-ne p1, p4, :cond_b

    .line 2336
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->tether:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2337
    :cond_b
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    if-ne p1, p4, :cond_c

    .line 2338
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->lan:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2339
    :cond_c
    sget p4, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    if-ne p1, p4, :cond_d

    .line 2340
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p5, Ldev/ukanth/ufirewall/R$string;->tor:I

    invoke-virtual {p0, p5}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2342
    :cond_d
    :goto_0
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->selectRevert(I)V

    sput-boolean p3, Ldev/ukanth/ufirewall/MainActivity;->dirty:Z

    goto/16 :goto_1

    :cond_e
    const/4 p3, 0x2

    if-ne p4, p3, :cond_15

    .line 2346
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    const/4 p4, 0x0

    if-ne p1, p3, :cond_f

    .line 2347
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->wifi:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2348
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAllWifi(Z)V

    goto/16 :goto_1

    .line 2349
    :cond_f
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    if-ne p1, p3, :cond_10

    .line 2350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->data:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2351
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAll3G(Z)V

    goto/16 :goto_1

    .line 2352
    :cond_10
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    if-ne p1, p3, :cond_11

    .line 2353
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->roam:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2354
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAllRoam(Z)V

    goto/16 :goto_1

    .line 2355
    :cond_11
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    if-ne p1, p3, :cond_12

    .line 2356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->vpn:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2357
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAllVPN(Z)V

    goto :goto_1

    .line 2358
    :cond_12
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    if-ne p1, p3, :cond_13

    .line 2359
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->tether:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2360
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAlltether(Z)V

    goto :goto_1

    .line 2361
    :cond_13
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    if-ne p1, p3, :cond_14

    .line 2362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->lan:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2363
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAllLAN(Z)V

    goto :goto_1

    .line 2364
    :cond_14
    sget p3, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    if-ne p1, p3, :cond_15

    .line 2365
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget p3, Ldev/ukanth/ufirewall/R$string;->tor:I

    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2366
    invoke-direct {p0, p4}, Ldev/ukanth/ufirewall/MainActivity;->selectAllTor(Z)V

    :cond_15
    :goto_1
    return-void
.end method

.method private synthetic lambda$showExportAllWarningDialog$12(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 1494
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportAllPreferencesToFileWithPicker(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$showExportDialog$11(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p3, :cond_3

    if-eq p3, p1, :cond_0

    goto :goto_1

    .line 1469
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 1472
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showExportAllWarningDialog()V

    goto :goto_1

    .line 1470
    :cond_2
    :goto_0
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportAllPreferencesToFileWithPicker(Landroid/content/Context;)V

    goto :goto_1

    .line 1466
    :cond_3
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportRulesToFileWithPicker(Landroid/content/Context;)V

    :goto_1
    return p1
.end method

.method private synthetic lambda$showImportDialog$10(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)Z
    .locals 3

    const-string p1, "//afwall//"

    const-string p2, "/"

    const/4 p4, 0x0

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    if-eq p3, v1, :cond_0

    goto/16 :goto_3

    .line 1410
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result p3

    const/4 v2, 0x0

    if-nez p3, :cond_2

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 1439
    :cond_1
    invoke-static {p0, v2}, Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_2
    :goto_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, v0, :cond_3

    .line 1414
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1416
    :cond_3
    new-instance p1, Ljava/io/File;

    sget-object p3, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-virtual {p3, p4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p2, p1

    .line 1418
    :goto_1
    new-instance p1, Ldev/ukanth/ufirewall/util/FileDialog;

    invoke-direct {p1, p0, p2, v2}, Ldev/ukanth/ufirewall/util/FileDialog;-><init>(Landroid/app/Activity;Ljava/io/File;Z)V

    .line 1419
    new-instance p2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda9;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->addFileListener(Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V

    .line 1437
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/FileDialog;->showDialog()V

    goto :goto_3

    :cond_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge p3, v0, :cond_5

    .line 1382
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 1384
    :cond_5
    new-instance p1, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, p1

    .line 1386
    :goto_2
    new-instance p1, Ldev/ukanth/ufirewall/util/FileDialog;

    invoke-direct {p1, p0, p2, v1}, Ldev/ukanth/ufirewall/util/FileDialog;-><init>(Landroid/app/Activity;Ljava/io/File;Z)V

    .line 1390
    new-instance p2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda8;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    invoke-virtual {p1, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->addFileListener(Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V

    .line 1406
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/FileDialog;->showDialog()V

    :goto_3
    return v1
.end method

.method private synthetic lambda$showImportDialog$8(Ljava/io/File;)V
    .locals 2

    .line 1392
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 1394
    invoke-static {p0, v0, p1, v1}, Ldev/ukanth/ufirewall/Api;->loadSharedPreferencesFromFile(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1395
    sput-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 1396
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    .line 1397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->import_rules_success:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1400
    sget p1, Ldev/ukanth/ufirewall/R$string;->import_rules_fail:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showImportDialog$9(Ljava/io/File;)V
    .locals 2

    .line 1420
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    .line 1422
    invoke-static {p0, v0, p1, v1}, Ldev/ukanth/ufirewall/Api;->loadSharedPreferencesFromFile(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1423
    sput-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 1424
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Ldev/ukanth/ufirewall/R$string;->import_rules_success:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1426
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 1427
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    .line 1428
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1430
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1431
    sget p1, Ldev/ukanth/ufirewall/R$string;->import_rules_fail:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1433
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$showRootNotFoundMessage$1(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 628
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private synthetic lambda$showRootNotFoundMessage$2(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 630
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    .line 631
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    invoke-static {p2}, Landroid/os/Process;->killProcess(I)V

    .line 632
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method

.method private probeLogTarget()V
    .locals 4

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->logTargets()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 336
    :try_start_0
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    const/4 v2, 0x1

    .line 337
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    new-instance v3, Ldev/ukanth/ufirewall/MainActivity$3;

    invoke-direct {v3, p0, v0}, Ldev/ukanth/ufirewall/MainActivity$3;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ljava/util/List;)V

    .line 338
    invoke-virtual {v1, v3}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setLogging(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v0

    sget-object v1, Ldev/ukanth/ufirewall/util/G;->ctx:Landroid/content/Context;

    const-string v2, "cat /proc/net/ip_tables_targets"

    .line 354
    invoke-virtual {v0, v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "Exception in getting iptables log targets"

    .line 356
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private purgeRules()V
    .locals 3

    .line 1713
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    invoke-direct {v0, p0, p0}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->purgeTask:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    .line 1714
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private refreshHeader()V
    .locals 3

    .line 933
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->pPrefs:Landroid/content/SharedPreferences;

    const-string v1, "BlockMode"

    const-string v2, "whitelist"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getResources()Landroid/content/res/Resources;

    .line 937
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 939
    sget v2, Ldev/ukanth/ufirewall/R$id;->allowmode:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    .line 940
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_mode:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_allow:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 944
    sget v2, Ldev/ukanth/ufirewall/R$id;->blockmode:I

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    .line 945
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_mode:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_deny:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void
.end method

.method private registerLogService()V
    .locals 3

    .line 284
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AFWall"

    const-string v1, "Starting Log Service"

    .line 285
    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private registerNetworkObserver()V
    .locals 3

    .line 400
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLogService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Ldev/ukanth/ufirewall/service/LogService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 402
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private registerThemeIntent()V
    .locals 3

    .line 317
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dev.ukanth.ufirewall.theme.REFRESH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 318
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$2;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$2;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->themeRefreshReceiver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->themeRefreshReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    .line 326
    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->themeRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 328
    invoke-virtual {p0, v1, v0}, Ldev/ukanth/ufirewall/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private registerToastbroadcast()V
    .locals 3

    .line 442
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "TOAST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 443
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$5;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$5;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->toastReceiver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->toastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    .line 450
    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->toastReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    invoke-virtual {p0, v1, v0}, Ldev/ukanth/ufirewall/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private registerUIRefresh()V
    .locals 3

    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dev.ukanth.ufirewall.ui.CHECKREFRESH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$1;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$1;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiRefreshReceiver:Landroid/content/BroadcastReceiver;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiRefreshReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    .line 308
    invoke-static {p0, v1, v0, v2}, Ldev/ukanth/ufirewall/Api$$ExternalSyntheticApiModelOutline0;->m(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiRefreshReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    invoke-virtual {p0, v1, v0}, Ldev/ukanth/ufirewall/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method private registerUIbroadcast4()V
    .locals 2

    .line 457
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "UPDATEUI4"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->uiFilter4:Landroid/content/IntentFilter;

    .line 459
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$6;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$6;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver4:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerUIbroadcast6()V
    .locals 2

    .line 473
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "UPDATEUI6"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->uiFilter6:Landroid/content/IntentFilter;

    .line 475
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$7;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$7;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver6:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private reloadPreferences()V
    .locals 3

    .line 666
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->updateSelectedColumns()V

    .line 668
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 669
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadPrefs()V

    .line 670
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->checkPreferences()V

    .line 672
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 675
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 679
    :cond_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->refreshHeader()V

    .line 680
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->updateIconStatus()V

    .line 682
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->clearNotification()V

    .line 684
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->disableIcons()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 685
    sget v0, Ldev/ukanth/ufirewall/R$id;->imageHolder:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 687
    :cond_1
    sget v0, Ldev/ukanth/ufirewall/R$id;->imageHolder:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 690
    :goto_0
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    sget v0, Ldev/ukanth/ufirewall/R$id;->filerOption:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 693
    :cond_2
    sget v0, Ldev/ukanth/ufirewall/R$id;->filerOption:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 696
    :goto_1
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    sget v0, Ldev/ukanth/ufirewall/R$id;->profileOption:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 699
    :cond_3
    sget v0, Ldev/ukanth/ufirewall/R$id;->profileOption:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 701
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->addColumns(I)V

    goto :goto_3

    .line 704
    :cond_4
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->hideColumns(I)V

    .line 706
    :goto_3
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 707
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->addColumns(I)V

    goto :goto_4

    .line 709
    :cond_5
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->hideColumns(I)V

    .line 711
    :goto_4
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 712
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->addColumns(I)V

    goto :goto_5

    .line 714
    :cond_6
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->hideColumns(I)V

    .line 717
    :goto_5
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isMobileNetworkSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 718
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 719
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 722
    :cond_7
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    :goto_6
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 726
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->addColumns(I)V

    goto :goto_7

    .line 728
    :cond_8
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->hideColumns(I)V

    .line 730
    :goto_7
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 731
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->addColumns(I)V

    goto :goto_8

    .line 733
    :cond_9
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->hideColumns(I)V

    .line 737
    :goto_8
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->updateRadioFilter()V

    .line 739
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableMultiProfile()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 740
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->setupMultiProfile()V

    .line 746
    :cond_a
    sget-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    if-eqz v0, :cond_b

    sget-object v0, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 748
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->selectFilterGroup()V

    goto :goto_9

    .line 751
    :cond_b
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    :goto_9
    return-void
.end method

.method private reloadProfileList(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 844
    new-instance p1, Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 847
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v1, Ldev/ukanth/ufirewall/R$string;->defaultProfile:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 850
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile1:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile1"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 851
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile2:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile2"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 852
    sget-object v0, Ldev/ukanth/ufirewall/util/G;->gPrefs:Landroid/content/SharedPreferences;

    sget v1, Ldev/ukanth/ufirewall/R$string;->profile3:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "profile3"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getAdditionalProfiles()Ljava/util/List;

    move-result-object p1

    .line 854
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 855
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 856
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 860
    :cond_2
    invoke-static {}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfiles()Ljava/util/List;

    move-result-object p1

    .line 861
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldev/ukanth/ufirewall/profiles/ProfileData;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    .line 862
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method private search(Landroid/view/MenuItem;)V
    .locals 2

    .line 1340
    sget v0, Ldev/ukanth/ufirewall/R$layout;->searchbar:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 1341
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$id;->searchApps:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->filterTextWatcher:Landroid/text/TextWatcher;

    .line 1343
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1344
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1345
    invoke-virtual {v0}, Landroid/widget/EditText;->setSingleLine()V

    .line 1347
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$10;

    invoke-direct {v1, p0, v0}, Ldev/ukanth/ufirewall/MainActivity$10;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/widget/EditText;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    return-void
.end method

.method private selectAction()V
    .locals 4

    .line 1733
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 1734
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 1735
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 1736
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->invert_all:I

    .line 1738
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->clone:I

    .line 1739
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->clear_all:I

    .line 1740
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 1737
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda22;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 1741
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda23;-><init>()V

    .line 1754
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private selectActionConfirmation(I)V
    .locals 4

    .line 2295
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->select_action:I

    .line 2296
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2297
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->check_all:I

    .line 2299
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->invert_all:I

    .line 2300
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Ldev/ukanth/ufirewall/R$string;->uncheck_all:I

    .line 2301
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 2298
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda12;-><init>(Ldev/ukanth/ufirewall/MainActivity;I)V

    .line 2302
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2369
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private selectActionConfirmation(Ljava/lang/String;I)V
    .locals 2

    .line 2041
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 2042
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 2043
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->OK:I

    .line 2044
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    sget v0, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 2045
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda16;-><init>(Ldev/ukanth/ufirewall/MainActivity;I)V

    .line 2046
    invoke-virtual {p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    new-instance p2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda17;-><init>()V

    .line 2057
    invoke-virtual {p1, p2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2058
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method private selectAll3G(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1950
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1952
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1954
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1956
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1957
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1958
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    :cond_1
    const/4 v3, 0x1

    .line 1962
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1964
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAllLAN(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1761
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1763
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1765
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1767
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1768
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1769
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    :cond_1
    const/4 v3, 0x1

    .line 1772
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1774
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAllRoam(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1908
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1910
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1912
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1914
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1915
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1916
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    :cond_1
    const/4 v3, 0x1

    .line 1919
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1921
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAllTor(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1780
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1782
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1784
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1786
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1787
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1788
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    :cond_1
    const/4 v3, 0x1

    .line 1791
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1793
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAllVPN(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1812
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1814
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1816
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1818
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1819
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1820
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    :cond_1
    const/4 v3, 0x1

    .line 1823
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1825
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAllWifi(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1971
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1973
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1974
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1977
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1978
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1979
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    :cond_1
    const/4 v3, 0x1

    .line 1982
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1984
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectAlltether(Z)V
    .locals 6

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1831
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1833
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1835
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1837
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1838
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    if-eq v4, v5, :cond_1

    .line 1839
    iput-boolean p1, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    :cond_1
    const/4 v3, 0x1

    .line 1842
    invoke-virtual {p0, v3}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1844
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectFilterGroup()V
    .locals 3

    .line 521
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showFilter()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 522
    sget v0, Ldev/ukanth/ufirewall/R$id;->appFilterGroup:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 523
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 524
    sget v2, Ldev/ukanth/ufirewall/R$id;->rpkg_core:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    .line 525
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    goto :goto_0

    .line 526
    :cond_0
    sget v2, Ldev/ukanth/ufirewall/R$id;->rpkg_sys:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 527
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    goto :goto_0

    .line 528
    :cond_1
    sget v2, Ldev/ukanth/ufirewall/R$id;->rpkg_user:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 529
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    goto :goto_0

    .line 531
    :cond_2
    invoke-direct {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    goto :goto_0

    .line 534
    :cond_3
    invoke-direct {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    :goto_0
    return-void
.end method

.method private selectRevert()V
    .locals 7

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1883
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1885
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1887
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1889
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1890
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    const/4 v6, 0x1

    if-eq v4, v5, :cond_1

    .line 1891
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    .line 1892
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    .line 1893
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    .line 1894
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    .line 1895
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    .line 1896
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    .line 1897
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    .line 1900
    :cond_1
    invoke-virtual {p0, v6}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1902
    :cond_2
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method private selectRevert(I)V
    .locals 7

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 1850
    sget v0, Ldev/ukanth/ufirewall/R$id;->listview:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1852
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1854
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    .line 1856
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1857
    iget v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    const/16 v5, -0xa

    const/4 v6, 0x1

    if-eq v4, v5, :cond_7

    .line 1858
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    if-ne p1, v4, :cond_1

    .line 1859
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_wifi:Z

    goto :goto_1

    .line 1860
    :cond_1
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    if-ne p1, v4, :cond_2

    .line 1861
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_3g:Z

    goto :goto_1

    .line 1862
    :cond_2
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    if-ne p1, v4, :cond_3

    .line 1863
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_roam:Z

    goto :goto_1

    .line 1864
    :cond_3
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    if-ne p1, v4, :cond_4

    .line 1865
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_vpn:Z

    goto :goto_1

    .line 1866
    :cond_4
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    if-ne p1, v4, :cond_5

    .line 1867
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tether:Z

    goto :goto_1

    .line 1868
    :cond_5
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    if-ne p1, v4, :cond_6

    .line 1869
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    goto :goto_1

    .line 1870
    :cond_6
    sget v4, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    if-ne p1, v4, :cond_7

    .line 1871
    iget-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    xor-int/2addr v4, v6

    iput-boolean v4, v3, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_tor:Z

    .line 1875
    :cond_7
    :goto_1
    invoke-virtual {p0, v6}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1877
    :cond_8
    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method private setCustomScript()V
    .locals 2

    .line 1578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1579
    const-class v1, Ldev/ukanth/ufirewall/activity/CustomScriptActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0x4b1

    .line 1580
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setCustomScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1644
    sget-object v0, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1646
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1647
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CustomScript"

    .line 1648
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "CustomScript2"

    .line 1649
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1651
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1652
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->custom_script_removed:I

    goto :goto_1

    .line 1653
    :cond_1
    :goto_0
    sget p1, Ldev/ukanth/ufirewall/R$string;->custom_script_defined:I

    goto :goto_1

    .line 1658
    :cond_2
    sget p1, Ldev/ukanth/ufirewall/R$string;->custom_script_error:I

    .line 1660
    :goto_1
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1661
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1663
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->applyOrSaveRules()V

    :cond_3
    return-void
.end method

.method private setupMultiProfile()V
    .locals 8

    const/4 v0, 0x1

    .line 803
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->reloadProfileList(Z)V

    .line 804
    sget v1, Ldev/ukanth/ufirewall/R$id;->profileGroup:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 805
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008

    iget-object v3, p0, Ldev/ukanth/ufirewall/MainActivity;->mlocalList:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    .line 807
    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 808
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 809
    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 810
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->storedProfile()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 812
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result v2

    const-string v3, "AFWallPrefs"

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 813
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "AFWallProfile3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "AFWallProfile2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "AFWallProfile1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    packed-switch v7, :pswitch_data_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 827
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 815
    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 824
    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 821
    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    .line 818
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 830
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 831
    invoke-static {v1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByIdentifier(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 833
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->spinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 836
    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dd7ba9 -> :sswitch_3
        -0x2dd7ba8 -> :sswitch_2
        -0x2dd7ba7 -> :sswitch_1
        0x67c32061 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showAbout()V
    .locals 2

    .line 1512
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/activity/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4b0

    .line 1513
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showApplications(Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    .line 1024
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    .line 1026
    invoke-static {p0, v3}, Ldev/ukanth/ufirewall/Api;->getApps(Landroid/content/Context;Ldev/ukanth/ufirewall/MainActivity$GetAppList;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    .line 1029
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v4, :cond_4

    .line 1030
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    .line 1031
    iget-object v7, v6, Ldev/ukanth/ufirewall/Api$PackageInfoData;->names:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    .line 1033
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1034
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showUid()Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v6, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1035
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    iget v0, v6, Ldev/ukanth/ufirewall/Api$PackageInfoData;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const-string v2, ""

    .line 1045
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object v1, v3

    goto :goto_1

    :cond_5
    if-nez v0, :cond_7

    .line 1047
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    goto :goto_1

    .line 1050
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    :goto_1
    if-eqz v1, :cond_9

    .line 1055
    :try_start_0
    new-instance p1, Ldev/ukanth/ufirewall/util/PackageComparator;

    invoke-direct {p1}, Ldev/ukanth/ufirewall/util/PackageComparator;-><init>()V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget p1, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    const/4 v0, 0x4

    if-gt p1, v0, :cond_8

    .line 1058
    new-instance p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1, v4}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;Z)V

    goto :goto_2

    .line 1060
    :cond_8
    new-instance p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0, v1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/content/Context;Ljava/util/List;)V

    :goto_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 1062
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->index:I

    iget v1, p0, Ldev/ukanth/ufirewall/MainActivity;->top:I

    .line 1064
    invoke-virtual {p1, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_9
    return-void
.end method

.method private showExportAllWarningDialog()V
    .locals 3

    .line 1488
    :try_start_0
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->export_all:I

    .line 1489
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->export_all_warning:I

    .line 1490
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->exports:I

    .line 1491
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 1492
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda4;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 1493
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "MaterialDialog failed, likely due to cursor tinting issue on newer Android versions"

    .line 1498
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    .line 1500
    sget v0, Ldev/ukanth/ufirewall/R$string;->export_all_warning:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1501
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->exportAllPreferencesToFileWithPicker(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private showExportDialog()V
    .locals 5

    const-string v0, " ("

    .line 1457
    :try_start_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Ldev/ukanth/ufirewall/R$string;->exports:I

    .line 1458
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1459
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Ldev/ukanth/ufirewall/R$string;->export_rules:I

    .line 1461
    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->export_all:I

    .line 1462
    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Ldev/ukanth/ufirewall/R$string;->donate_only_short:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 1460
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda25;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    const/4 v2, -0x1

    .line 1463
    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->exports:I

    .line 1477
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 1478
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "MaterialDialog failed, likely due to cursor tinting issue on newer Android versions"

    .line 1481
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const-string v0, "Export dialog unavailable due to Android compatibility issue. Please use Settings > Export to access export functionality."

    .line 1482
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private showImportDialog()V
    .locals 5

    const-string v0, " ("

    .line 1369
    :try_start_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Ldev/ukanth/ufirewall/R$string;->imports:I

    .line 1370
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 1371
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    sget v4, Ldev/ukanth/ufirewall/R$string;->import_rules:I

    .line 1373
    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Ldev/ukanth/ufirewall/R$string;->import_all:I

    .line 1374
    invoke-virtual {p0, v4}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Ldev/ukanth/ufirewall/R$string;->donate_only_short:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v3, v2

    .line 1372
    invoke-virtual {v1, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda26;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    const/4 v2, -0x1

    .line 1375
    invoke-virtual {v0, v2, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackSingleChoice(ILcom/afollestad/materialdialogs/MaterialDialog$ListCallbackSingleChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->imports:I

    .line 1445
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    .line 1446
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1447
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "AFWall"

    const-string v2, "MaterialDialog failed, likely due to cursor tinting issue on newer Android versions"

    .line 1449
    invoke-static {v1, v2, v0}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const-string v0, "Import dialog unavailable due to Android compatibility issue. Please use file manager to manually copy backup files to AFWall directory."

    .line 1451
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method private showLog()V
    .locals 3

    .line 1679
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->oldLogView()Z

    move-result v0

    const/16 v1, 0x4b3

    if-eqz v0, :cond_0

    .line 1680
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ldev/ukanth/ufirewall/activity/OldLogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1681
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1683
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Ldev/ukanth/ufirewall/activity/LogActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1684
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private showOrLoadApplications()V
    .locals 3

    .line 957
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$GetAppList;

    invoke-direct {v0, p0, p0}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity;)V

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->getAppList:Ldev/ukanth/ufirewall/MainActivity$GetAppList;

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-nez v1, :cond_1

    .line 958
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->getAppList:Ldev/ukanth/ufirewall/MainActivity$GetAppList;

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->getAppList:Ldev/ukanth/ufirewall/MainActivity$GetAppList;

    .line 959
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private showPreferences()V
    .locals 2

    .line 1506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/preferences/PreferencesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4b5

    .line 1508
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showRootNotFoundMessage()V
    .locals 3

    .line 623
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 625
    :try_start_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v1, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_common:I

    .line 626
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_su:I

    .line 627
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda6;-><init>()V

    .line 628
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda7;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 629
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->Continue:I

    .line 634
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$string;->exit:I

    .line 635
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v1

    .line 636
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 638
    :catch_0
    sget v1, Ldev/ukanth/ufirewall/R$string;->error_su_toast:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private showRules()V
    .locals 2

    .line 1671
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldev/ukanth/ufirewall/activity/RulesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x4b2

    .line 1672
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startRootShell()V
    .locals 3

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "true"

    .line 604
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v1, Ldev/ukanth/ufirewall/service/RootCommand;

    invoke-direct {v1}, Ldev/ukanth/ufirewall/service/RootCommand;-><init>()V

    sget v2, Ldev/ukanth/ufirewall/R$string;->error_su:I

    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setFailureToast(I)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    const/4 v2, 0x1

    .line 606
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setReopenShell(Z)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$8;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/MainActivity$8;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 607
    invoke-virtual {v1, v2}, Ldev/ukanth/ufirewall/service/RootCommand;->setCallback(Ldev/ukanth/ufirewall/service/RootCommand$Callback;)Ldev/ukanth/ufirewall/service/RootCommand;

    move-result-object v1

    .line 617
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ldev/ukanth/ufirewall/service/RootCommand;->run(Landroid/content/Context;Ljava/util/List;)V

    .line 619
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->probeLogTarget()V

    return-void
.end method

.method private updateIconStatus()V
    .locals 2

    .line 595
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->notification:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    goto :goto_0

    .line 598
    :cond_0
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->notification_error:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setIcon(I)V

    :goto_0
    return-void
.end method

.method private updateRadioFilter()V
    .locals 3

    .line 498
    sget v0, Ldev/ukanth/ufirewall/R$id;->appFilterGroup:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 499
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->showFilter()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->selectedFilter()I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 511
    sget v1, Ldev/ukanth/ufirewall/R$id;->rpkg_all:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 508
    :cond_0
    sget v1, Ldev/ukanth/ufirewall/R$id;->rpkg_user:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 505
    :cond_1
    sget v1, Ldev/ukanth/ufirewall/R$id;->rpkg_sys:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 502
    :cond_2
    sget v1, Ldev/ukanth/ufirewall/R$id;->rpkg_core:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 515
    :cond_3
    sget v1, Ldev/ukanth/ufirewall/R$id;->rpkg_all:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 517
    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private updateSelectedColumns()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    .line 276
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableLAN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    :goto_0
    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    .line 277
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableRoam()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    :goto_1
    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    .line 278
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableVPN()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    :goto_2
    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    .line 279
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTether()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    :goto_3
    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    .line 280
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableTor()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    :goto_4
    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 2418
    invoke-static {p1}, Ldev/ukanth/ufirewall/Api;->updateBaseContextLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public confirmDisable()V
    .locals 2

    .line 1556
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Ldev/ukanth/ufirewall/R$string;->confirmMsg:I

    .line 1557
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1559
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda20;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 1560
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda21;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 1565
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->Yes:I

    .line 1569
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$string;->No:I

    .line 1570
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 1571
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return-void
.end method

.method public deviceCheck()V
    .locals 2

    .line 869
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->isDoKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isDonate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 883
    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "keyguard"

    .line 870
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 871
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 872
    invoke-virtual {v0, v1, v1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0x4bc

    .line 875
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ldev/ukanth/ufirewall/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 880
    :cond_2
    sget v0, Ldev/ukanth/ufirewall/R$string;->android_version:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public isDirty()Z
    .locals 1

    sget-boolean v0, Ldev/ukanth/ufirewall/MainActivity;->dirty:Z

    return v0
.end method

.method protected isSuPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2374
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 2375
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public menuSetApplyOrSave(Landroid/view/Menu;Z)V
    .locals 1

    .line 1119
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda18;-><init>(Ldev/ukanth/ufirewall/MainActivity;Landroid/view/Menu;Z)V

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1595
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x4b5

    const/4 v1, -0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4bc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x261b

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "AFWall"

    const-string v0, "In VERIFY_CHECK"

    .line 1612
    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p2, v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1618
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDo(Z)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1615
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDo(Z)Z

    goto :goto_0

    :cond_3
    if-eq p2, v1, :cond_4

    .line 1604
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    .line 1605
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 1601
    :cond_4
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    goto :goto_0

    .line 1624
    :cond_5
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->invalidateOptionsMenu()V

    :goto_0
    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_6

    const-string p1, "dev.ukanth.ufirewall.intent.action.CUSTOM_SCRIPT"

    .line 1630
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "dev.ukanth.ufirewall.intent.extra.SCRIPT"

    .line 1631
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dev.ukanth.ufirewall.intent.extra.SCRIPT2"

    .line 1632
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1633
    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity;->setCustomScript(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 417
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 768
    sget p1, Ldev/ukanth/ufirewall/R$id;->rpkg_all:I

    if-ne p2, p1, :cond_0

    const/4 p1, -0x1

    .line 769
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    const/16 p1, 0x63

    .line 770
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->saveSelectedFilter(I)V

    goto :goto_0

    .line 771
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$id;->rpkg_core:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, p1, :cond_1

    .line 772
    invoke-direct {p0, v1}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    .line 773
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->saveSelectedFilter(I)V

    goto :goto_0

    .line 774
    :cond_1
    sget p1, Ldev/ukanth/ufirewall/R$id;->rpkg_sys:I

    const/4 v2, 0x1

    if-ne p2, p1, :cond_2

    .line 775
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    .line 776
    invoke-static {v2}, Ldev/ukanth/ufirewall/util/G;->saveSelectedFilter(I)V

    goto :goto_0

    .line 777
    :cond_2
    sget p1, Ldev/ukanth/ufirewall/R$id;->rpkg_user:I

    if-ne p2, p1, :cond_3

    .line 778
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/MainActivity;->filterApps(I)V

    .line 779
    invoke-static {v1}, Ldev/ukanth/ufirewall/util/G;->saveSelectedFilter(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1719
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1720
    sget v1, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_3g:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_roam:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_vpn:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_tether:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_lan:I

    if-eq v0, v1, :cond_1

    sget v1, Ldev/ukanth/ufirewall/R$id;->img_tor:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1727
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$id;->img_action:I

    if-ne v0, p1, :cond_2

    .line 1728
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->selectAction()V

    goto :goto_1

    .line 1726
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->selectActionConfirmation(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 179
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->initTheme()V

    .line 182
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->registerPrivateLink()V

    .line 183
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->checkPermissions()V

    const/4 p1, 0x0

    .line 186
    :try_start_0
    const-class v0, Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FLAG_HARDWARE_ACCELERATED"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 188
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/Window;->setFlags(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 193
    :goto_0
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->updateSelectedColumns()V

    iget v0, p0, Ldev/ukanth/ufirewall/MainActivity;->selectedColumns:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_0

    iput v3, p0, Ldev/ukanth/ufirewall/MainActivity;->currentUI:I

    .line 197
    sget v0, Ldev/ukanth/ufirewall/R$layout;->main_old:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setContentView(I)V

    goto :goto_1

    :cond_0
    iput v2, p0, Ldev/ukanth/ufirewall/MainActivity;->currentUI:I

    .line 200
    sget v0, Ldev/ukanth/ufirewall/R$layout;->main:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setContentView(I)V

    .line 203
    :goto_1
    sget v0, Ldev/ukanth/ufirewall/R$id;->main_toolbar:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 206
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 209
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 212
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_wifi:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    sget v0, Ldev/ukanth/ufirewall/R$id;->img_action:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->enableStealthPattern()Z

    move-result v1

    invoke-static {v0, v1}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->setStealthMode(Landroid/content/Context;Z)V

    .line 221
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->getMaxPatternTry()I

    move-result v1

    invoke-static {v0, v1}, Lhaibison/android/lockpattern/utils/AlpSettings$Display;->setMaxRetries(Landroid/content/Context;I)V

    .line 225
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    new-instance v1, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda13;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iput v3, p0, Ldev/ukanth/ufirewall/MainActivity;->initDone:I

    .line 229
    sget v0, Ldev/ukanth/ufirewall/R$id;->swipe_container:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 230
    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 233
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->hasRoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    new-instance v0, Ldev/ukanth/ufirewall/MainActivity$RootCheck;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;-><init>(Ldev/ukanth/ufirewall/MainActivity;Ldev/ukanth/ufirewall/MainActivity$RootCheck-IA;)V

    invoke-virtual {v0, p0}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->setContext(Landroid/content/Context;)Ldev/ukanth/ufirewall/MainActivity$RootCheck;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Ldev/ukanth/ufirewall/MainActivity$RootCheck;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 237
    :cond_1
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->startRootShell()V

    .line 238
    new-instance p1, Ldev/ukanth/ufirewall/util/SecurityUtil;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/util/SecurityUtil;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/SecurityUtil;->passCheck()Z

    .line 239
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerNetworkObserver()V

    .line 241
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 242
    invoke-static {p0, v2, v3}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    .line 245
    :cond_2
    :goto_2
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerUIbroadcast4()V

    .line 246
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerUIbroadcast6()V

    .line 247
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerToastbroadcast()V

    .line 248
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->initTextWatcher()V

    .line 249
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerThemeIntent()V

    .line 250
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->registerUIRefresh()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1090
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1091
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1092
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$menu;->menu_bar:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    .line 1097
    new-instance p1, Ldev/ukanth/ufirewall/MainActivity$9;

    invoke-direct {p1, p0}, Ldev/ukanth/ufirewall/MainActivity$9;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 2

    .line 2383
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->getAppList:Ldev/ukanth/ufirewall/MainActivity$GetAppList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2385
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity$GetAppList;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->runApply:Ldev/ukanth/ufirewall/MainActivity$RunApply;

    if-eqz v0, :cond_1

    .line 2388
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity$RunApply;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->purgeTask:Ldev/ukanth/ufirewall/MainActivity$PurgeTask;

    if-eqz v0, :cond_2

    .line 2392
    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/MainActivity$PurgeTask;->cancel(Z)Z

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->toastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 2396
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->themeRefreshReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 2399
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->uiRefreshReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_5

    .line 2402
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2408
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->getCachedShell()Lcom/topjohnwu/superuser/Shell;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2409
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2410
    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget p1, p0, Ldev/ukanth/ufirewall/MainActivity;->initDone:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Ldev/ukanth/ufirewall/MainActivity;->initDone:I

    if-le p1, p2, :cond_8

    .line 967
    sget p1, Ldev/ukanth/ufirewall/R$id;->profileGroup:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    .line 968
    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 969
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->isProfileMigrated()Z

    move-result p4

    const-string p5, "AFWallPrefs"

    if-nez p4, :cond_5

    if-eqz p3, :cond_3

    if-eq p3, p2, :cond_2

    const/4 p4, 0x2

    if-eq p3, p4, :cond_1

    const/4 p4, 0x3

    if-eq p3, p4, :cond_0

    if-eqz p1, :cond_4

    .line 985
    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :cond_0
    const-string p1, "AFWallProfile3"

    .line 981
    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string p1, "AFWallProfile2"

    .line 978
    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string p1, "AFWallProfile1"

    .line 975
    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_0

    .line 972
    :cond_3
    invoke-static {p2, p5}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    .line 989
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    if-eqz p1, :cond_7

    .line 997
    invoke-static {p1}, Ldev/ukanth/ufirewall/profiles/ProfileHelper;->getProfileByName(Ljava/lang/String;)Ldev/ukanth/ufirewall/profiles/ProfileData;

    move-result-object p1

    .line 998
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    goto :goto_1

    .line 993
    :cond_6
    invoke-static {p2, p5}, Ldev/ukanth/ufirewall/util/G;->setProfile(ZLjava/lang/String;)Z

    .line 1001
    :cond_7
    :goto_1
    invoke-virtual {p0, p2}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    .line 1003
    :goto_2
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->reloadProfile()V

    .line 1004
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->refreshHeader()V

    .line 1005
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    .line 1006
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->applyOnSwitchProfiles()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1007
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->applyOrSaveRules()V

    :cond_8
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 1991
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x4

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    if-eqz v0, :cond_3

    .line 1995
    sget p1, Ldev/ukanth/ufirewall/R$id;->menu_list_item:I

    invoke-interface {v0, p1, v2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    return v1

    .line 2000
    :cond_1
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2001
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Ldev/ukanth/ufirewall/R$string;->confirmation:I

    .line 2002
    invoke-virtual {v0, v3}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    .line 2003
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->cancelable(Z)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->unsaved_changes_message:I

    .line 2004
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->content(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->apply:I

    .line 2005
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    sget v2, Ldev/ukanth/ufirewall/R$string;->discard:I

    .line 2006
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda14;-><init>(Ldev/ukanth/ufirewall/MainActivity;)V

    .line 2007
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object v0

    new-instance v2, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, p2}, Ldev/ukanth/ufirewall/MainActivity$$ExternalSyntheticLambda15;-><init>(Ldev/ukanth/ufirewall/MainActivity;ILandroid/view/KeyEvent;)V

    .line 2011
    invoke-virtual {v0, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onNegative(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    move-result-object p1

    .line 2020
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    return v1

    .line 2024
    :cond_2
    invoke-virtual {p0, v2}, Ldev/ukanth/ufirewall/MainActivity;->setDirty(Z)V

    .line 2032
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 408
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 409
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 1166
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1167
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1168
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_toggle:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1169
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->disableOrEnable()V

    return v2

    .line 1171
    :cond_0
    sget v1, Ldev/ukanth/ufirewall/R$id;->allowmode:I

    const-string v3, "BlockMode"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    .line 1172
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1173
    sget-object p1, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Ldev/ukanth/ufirewall/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "whitelist"

    .line 1174
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1175
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1176
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->refreshHeader()V

    return v2

    .line 1178
    :cond_1
    sget v1, Ldev/ukanth/ufirewall/R$id;->blockmode:I

    if-ne v0, v1, :cond_2

    .line 1179
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1180
    sget-object p1, Ldev/ukanth/ufirewall/Api;->PREFS_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Ldev/ukanth/ufirewall/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "blacklist"

    .line 1181
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1182
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1183
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->refreshHeader()V

    return v2

    .line 1185
    :cond_2
    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_default:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const-string v0, "s0"

    .line 1186
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->sortBy(Ljava/lang/String;)V

    .line 1187
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1188
    sput-object v3, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 1189
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    return v2

    .line 1191
    :cond_3
    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_lastupdate:I

    if-ne v0, v1, :cond_4

    const-string v0, "s1"

    .line 1192
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->sortBy(Ljava/lang/String;)V

    .line 1193
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1194
    sput-object v3, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 1195
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    return v2

    .line 1197
    :cond_4
    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_uid:I

    if-ne v0, v1, :cond_5

    const-string v0, "s2"

    .line 1198
    invoke-static {v0}, Ldev/ukanth/ufirewall/util/G;->sortBy(Ljava/lang/String;)V

    .line 1199
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1200
    sput-object v3, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 1201
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    return v2

    .line 1203
    :cond_5
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_apply:I

    if-ne v0, v1, :cond_6

    .line 1204
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->applyOrSaveRules()V

    return v2

    .line 1206
    :cond_6
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_exit:I

    if-ne v0, v1, :cond_7

    .line 1207
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->finish()V

    return v2

    .line 1209
    :cond_7
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_help:I

    if-ne v0, v1, :cond_8

    .line 1210
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showAbout()V

    return v2

    .line 1212
    :cond_8
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_log:I

    if-ne v0, v1, :cond_9

    .line 1213
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showLog()V

    return v2

    .line 1215
    :cond_9
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_rules:I

    if-ne v0, v1, :cond_a

    .line 1216
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showRules()V

    return v2

    .line 1218
    :cond_a
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_setcustom:I

    if-ne v0, v1, :cond_b

    .line 1219
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->setCustomScript()V

    return v2

    .line 1221
    :cond_b
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_preference:I

    if-ne v0, v1, :cond_c

    .line 1222
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showPreferences()V

    return v2

    .line 1224
    :cond_c
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_search:I

    if-ne v0, v1, :cond_d

    .line 1225
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/MainActivity;->search(Landroid/view/MenuItem;)V

    return v2

    .line 1227
    :cond_d
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_export:I

    const/16 v3, 0x1d

    if-ne v0, v1, :cond_10

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_e

    .line 1230
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showExportDialog()V

    goto :goto_0

    :cond_e
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1232
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_f

    .line 1235
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 1239
    :cond_f
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showExportDialog()V

    :goto_0
    return v2

    .line 1243
    :cond_10
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_import:I

    if-ne v0, v1, :cond_13

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_11

    .line 1246
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->copyOldExportedData()V

    goto :goto_1

    :cond_11
    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1248
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 1251
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 1256
    :cond_12
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showImportDialog()V

    :goto_1
    return v2

    .line 1261
    :cond_13
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    .line 890
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    if-eqz v1, :cond_0

    .line 892
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 893
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    .line 902
    throw v1

    :catch_0
    :cond_0
    :goto_0
    iput-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->plsWait:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    .line 907
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->index:I

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->listview:Landroid/widget/ListView;

    const/4 v1, 0x0

    .line 908
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 909
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    iput v1, p0, Ldev/ukanth/ufirewall/MainActivity;->top:I

    .line 910
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activityPaused()V

    .line 911
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver4:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 912
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver6:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 1137
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/Api;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    .line 1139
    invoke-static {p0}, Ldev/ukanth/ufirewall/Api;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Ldev/ukanth/ufirewall/MainActivity;->menuSetApplyOrSave(Landroid/view/Menu;Z)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRefresh()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->index:I

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->top:I

    const/4 v1, 0x0

    .line 492
    sput-object v1, Ldev/ukanth/ufirewall/Api;->applications:Ljava/util/List;

    .line 493
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showOrLoadApplications()V

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 494
    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 1519
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    .line 1533
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 1535
    invoke-static {p0, p2}, Ldev/ukanth/ufirewall/Api;->assertBinaries(Landroid/content/Context;Z)Z

    goto :goto_0

    .line 1537
    :cond_1
    sget p1, Ldev/ukanth/ufirewall/R$string;->permissiondenied_asset:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    .line 1543
    :cond_2
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 1545
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showImportDialog()V

    goto :goto_1

    .line 1547
    :cond_3
    sget p1, Ldev/ukanth/ufirewall/R$string;->permissiondenied_importexport:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void

    .line 1523
    :cond_4
    array-length p1, p3

    if-lez p1, :cond_5

    aget p1, p3, v0

    if-nez p1, :cond_5

    .line 1525
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->showExportDialog()V

    goto :goto_2

    .line 1527
    :cond_5
    sget p1, Ldev/ukanth/ufirewall/R$string;->permissiondenied_importexport:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .line 590
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 645
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 651
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver4:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->uiFilter4:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 652
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/MainActivity;->uiProgressReceiver6:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Ldev/ukanth/ufirewall/MainActivity;->uiFilter6:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 654
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->activityResumed()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity;->mainMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 1073
    sget v1, Ldev/ukanth/ufirewall/R$id;->menu_search:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1075
    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1076
    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    goto :goto_0

    .line 1078
    :cond_0
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1079
    invoke-direct {p0, v0}, Ldev/ukanth/ufirewall/MainActivity;->search(Landroid/view/MenuItem;)V

    .line 1083
    :cond_1
    :goto_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 1

    .line 785
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    const/4 v0, 0x0

    iput v0, p0, Ldev/ukanth/ufirewall/MainActivity;->initDone:I

    .line 787
    invoke-direct {p0}, Ldev/ukanth/ufirewall/MainActivity;->reloadPreferences()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 585
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public setDirty(Z)V
    .locals 0

    sput-boolean p1, Ldev/ukanth/ufirewall/MainActivity;->dirty:Z

    return-void
.end method
