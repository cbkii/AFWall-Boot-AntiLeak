.class public abstract Ldev/ukanth/ufirewall/activity/DataDumpActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DataDumpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;
    }
.end annotation


# static fields
.field protected static final MENU_COPY:I = 0x10

.field protected static final MENU_EXPORT_LOG:I = 0x11

.field protected static final MENU_REFRESH:I = 0xd

.field protected static final MENU_TOGGLE:I = -0x3

.field protected static final MENU_ZOOM_IN:I = 0x16

.field protected static final MENU_ZOOM_OUT:I = 0x17

.field private static final MY_PERMISSIONS_REQUEST_WRITE_STORAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AFWall"

.field protected static dataText:Ljava/lang/String; = null

.field protected static sdDumpFile:Ljava/lang/String; = "iptables.log"


# instance fields
.field private interfacesCard:Landroidx/cardview/widget/CardView;

.field private interfacesContent:Landroid/widget/TextView;

.field private logcatCard:Landroidx/cardview/widget/CardView;

.field private logcatContent:Landroid/widget/TextView;

.field mScrollView:Landroid/view/View;

.field protected mainMenu:Landroid/view/Menu;

.field private preferencesCard:Landroidx/cardview/widget/CardView;

.field private preferencesContent:Landroid/widget/TextView;

.field private rulesContent:Landroid/widget/TextView;

.field private rulesStatus:Landroid/widget/TextView;

.field private rulesTitle:Landroid/widget/TextView;

.field scaleGesture:Landroid/widget/TextView;

.field private systemCard:Landroidx/cardview/widget/CardView;

.field private systemContent:Landroid/widget/TextView;

.field private useModernLayout:Z


# direct methods
.method public static synthetic $r8$lambda$DQ6rSe_npjXd60hH3TDxRRXwcqc(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->lambda$exportToSD$1(Ljava/io/File;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hmZzSQWu24s4PVKYPBiV_MrALq8(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->lambda$setData$0(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->useModernLayout:Z

    return-void
.end method

.method private copy()V
    .locals 3

    .line 526
    :try_start_0
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "clipboard"

    .line 527
    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-string v2, ""

    .line 529
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 530
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 531
    sget v0, Ldev/ukanth/ufirewall/R$string;->copied:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 533
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in Clipboard"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AFWall+"

    invoke-static {v1, v0}, Ldev/ukanth/ufirewall/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->copied:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ldev/ukanth/ufirewall/Api;->toast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private detectSectionType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 203
    sget v0, Ldev/ukanth/ufirewall/R$string;->ipv4_rules_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ipv4_rules"

    return-object p1

    .line 205
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$string;->ipv6_rules_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ipv6_rules"

    return-object p1

    :cond_1
    const-string v0, "Network interfaces"

    .line 207
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "interfaces"

    return-object p1

    :cond_2
    const-string v0, "ifconfig"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v0, "System info"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "system"

    return-object p1

    :cond_4
    const-string v0, "Preferences"

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "preferences"

    return-object p1

    :cond_5
    const-string v0, "Logcat"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "logcat"

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private exportToSD()V
    .locals 6

    const-string v0, "AFWall"

    const/16 v1, 0x1d

    const/4 v2, 0x1

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v1, :cond_0

    .line 476
    new-instance v3, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 481
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 485
    :cond_1
    new-instance v4, Ldev/ukanth/ufirewall/util/FileDialog;

    invoke-direct {v4, p0, v3, v2}, Ldev/ukanth/ufirewall/util/FileDialog;-><init>(Landroid/app/Activity;Ljava/io/File;Z)V

    .line 486
    invoke-virtual {v4, v2}, Ldev/ukanth/ufirewall/util/FileDialog;->setSelectDirectoryOption(Z)V

    .line 487
    new-instance v3, Ldev/ukanth/ufirewall/activity/DataDumpActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$$ExternalSyntheticLambda1;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;)V

    invoke-virtual {v4, v3}, Ldev/ukanth/ufirewall/util/FileDialog;->addDirectoryListener(Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;)V

    .line 503
    invoke-virtual {v4}, Ldev/ukanth/ufirewall/util/FileDialog;->showDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "FileDialog failed, using default path"

    .line 506
    invoke-static {v0, v4, v3}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    if-lt v0, v1, :cond_2

    .line 508
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 509
    new-instance v1, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;

    invoke-direct {v1, p0, v3}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 510
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 512
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 518
    :cond_3
    new-instance v0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;

    invoke-direct {v0, p0, v3}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->run()V

    :goto_1
    return-void
.end method

.method private initModernViews()V
    .locals 1

    .line 109
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesTitle:Landroid/widget/TextView;

    .line 110
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules_status:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesStatus:Landroid/widget/TextView;

    .line 111
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules_content:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    .line 112
    sget v0, Ldev/ukanth/ufirewall/R$id;->interfaces_content:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 113
    sget v0, Ldev/ukanth/ufirewall/R$id;->system_content:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemContent:Landroid/widget/TextView;

    .line 114
    sget v0, Ldev/ukanth/ufirewall/R$id;->preferences_content:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 115
    sget v0, Ldev/ukanth/ufirewall/R$id;->logcat_content:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatContent:Landroid/widget/TextView;

    .line 116
    sget v0, Ldev/ukanth/ufirewall/R$id;->interfaces_card:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesCard:Landroidx/cardview/widget/CardView;

    .line 117
    sget v0, Ldev/ukanth/ufirewall/R$id;->system_card:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemCard:Landroidx/cardview/widget/CardView;

    .line 118
    sget v0, Ldev/ukanth/ufirewall/R$id;->preferences_card:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesCard:Landroidx/cardview/widget/CardView;

    .line 119
    sget v0, Ldev/ukanth/ufirewall/R$id;->logcat_card:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatCard:Landroidx/cardview/widget/CardView;

    return-void
.end method

.method private initTheme()V
    .locals 3

    .line 288
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

    .line 291
    :pswitch_0
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightHighContrastTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setTheme(I)V

    goto :goto_1

    .line 290
    :pswitch_1
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppLightTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setTheme(I)V

    goto :goto_1

    .line 289
    :pswitch_2
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppDarkTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setTheme(I)V

    goto :goto_1

    .line 292
    :pswitch_3
    sget v0, Ldev/ukanth/ufirewall/R$style;->AppBlackTheme:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setTheme(I)V

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

.method private synthetic lambda$exportToSD$1(Ljava/io/File;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 489
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 490
    new-instance v1, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 491
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 493
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 499
    :cond_1
    new-instance v0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;

    invoke-direct {v0, p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/io/File;)V

    invoke-virtual {v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$Task;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$setData$0(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->useModernLayout:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->parseAndDisplayModernData(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 131
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method private parseAndDisplayModernData(Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    const-string v1, ""

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemContent:Landroid/widget/TextView;

    .line 141
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatContent:Landroid/widget/TextView;

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesCard:Landroidx/cardview/widget/CardView;

    const/16 v1, 0x8

    .line 145
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemCard:Landroidx/cardview/widget/CardView;

    .line 146
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesCard:Landroidx/cardview/widget/CardView;

    .line 147
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatCard:Landroidx/cardview/widget/CardView;

    .line 148
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    const-string v0, "\n"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_4

    aget-object v7, v1, v6

    const-string v8, "^=+$"

    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->detectSectionType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz v4, :cond_1

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4, v2}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->processSectionContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v8

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 179
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 185
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->processSectionContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemContent:Landroid/widget/TextView;

    .line 192
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 193
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatContent:Landroid/widget/TextView;

    .line 194
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 197
    sget v0, Ldev/ukanth/ufirewall/R$id;->rules:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 198
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private processSectionContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 222
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 223
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "preferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "ifconfig"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "ipv4_rules"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "ipv6_rules"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "logcat"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "interfaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    const-string p1, "\n\n"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesCard:Landroidx/cardview/widget/CardView;

    .line 255
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 256
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    .line 260
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesTitle:Landroid/widget/TextView;

    .line 227
    sget v0, Ldev/ukanth/ufirewall/R$string;->ipv4_rules_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesStatus:Landroid/widget/TextView;

    .line 228
    sget v0, Ldev/ukanth/ufirewall/R$string;->ready:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    .line 229
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemCard:Landroidx/cardview/widget/CardView;

    .line 250
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemContent:Landroid/widget/TextView;

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesTitle:Landroid/widget/TextView;

    .line 233
    sget v0, Ldev/ukanth/ufirewall/R$string;->ipv6_rules_title:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesStatus:Landroid/widget/TextView;

    .line 234
    sget v0, Ldev/ukanth/ufirewall/R$string;->ready:I

    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatCard:Landroidx/cardview/widget/CardView;

    .line 265
    invoke-virtual {p1, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatContent:Landroid/widget/TextView;

    .line 266
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesCard:Landroidx/cardview/widget/CardView;

    .line 240
    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setVisibility(I)V

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 241
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    .line 245
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f47c5a6 -> :sswitch_6
        -0x416819ee -> :sswitch_5
        -0x3cfb2f61 -> :sswitch_4
        -0x34e38dd1 -> :sswitch_3
        0x59385a1d -> :sswitch_2
        0x5e56869f -> :sswitch_1
        0x769adef8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private updateModernTextSize(F)V
    .locals 2

    .line 272
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    const/high16 p1, 0x41000000    # 8.0f

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    const/high16 v0, 0x41000000    # 8.0f

    :cond_0
    const/high16 p1, 0x41f00000    # 30.0f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    :cond_1
    float-to-int p1, v0

    .line 278
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize(I)I

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->rulesContent:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 280
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->interfacesContent:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 281
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_3
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->systemContent:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 282
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->preferencesContent:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    .line 283
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->logcatContent:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    .line 284
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 299
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 301
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->initTheme()V

    iget-boolean p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->useModernLayout:Z

    if-eqz p1, :cond_0

    .line 303
    sget p1, Ldev/ukanth/ufirewall/R$layout;->rules_modern:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setContentView(I)V

    .line 304
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->initModernViews()V

    goto :goto_0

    .line 306
    :cond_0
    sget p1, Ldev/ukanth/ufirewall/R$layout;->rules:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setContentView(I)V

    .line 309
    :goto_0
    sget p1, Ldev/ukanth/ufirewall/R$id;->rule_toolbar:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 311
    new-instance v0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$1;

    invoke-direct {v0, p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$1;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 320
    sget p1, Ldev/ukanth/ufirewall/R$id;->ruleScrollView:I

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->mScrollView:Landroid/view/View;

    .line 323
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 324
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 325
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    const-string p1, ""

    .line 328
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->setData(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0, p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->populateData(Landroid/content/Context;)V

    .line 331
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->locale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ldev/ukanth/ufirewall/Api;->updateLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v0, -0x3

    const-string v1, ""

    const/4 v2, 0x0

    .line 337
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$drawable;->ic_flow:I

    invoke-interface {v0, v1}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 338
    sget v1, Ldev/ukanth/ufirewall/R$string;->label_zoomin:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    invoke-interface {v0, v2, v3, v2, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->zoomin:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 339
    sget v1, Ldev/ukanth/ufirewall/R$string;->label_zoomout:I

    invoke-virtual {p0, v1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    invoke-interface {v0, v2, v4, v2, v1}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    sget v4, Ldev/ukanth/ufirewall/R$drawable;->zoomout:I

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/16 v1, 0x10

    .line 340
    sget v3, Ldev/ukanth/ufirewall/R$string;->copy:I

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->ic_copy:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0x11

    .line 341
    sget v3, Ldev/ukanth/ufirewall/R$string;->export_to_sd:I

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v3, Ldev/ukanth/ufirewall/R$drawable;->ic_export:I

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/16 v1, 0xd

    .line 342
    sget v3, Ldev/ukanth/ufirewall/R$string;->refresh:I

    invoke-interface {v0, v2, v1, v2, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Ldev/ukanth/ufirewall/R$drawable;->ic_refresh:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 344
    invoke-virtual {p0, v0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->populateMenu(Landroid/view/SubMenu;)V

    .line 346
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 349
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->mainMenu:Landroid/view/Menu;

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 391
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    iget-boolean p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->useModernLayout:Z

    if-eqz p1, :cond_1

    const/high16 p1, -0x40000000    # -2.0f

    .line 382
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->updateModernTextSize(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 384
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    sub-float/2addr p1, v2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 385
    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    float-to-int p1, p1

    .line 386
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize(I)I

    :goto_0
    return v3

    :cond_2
    iget-boolean p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->useModernLayout:Z

    if-eqz p1, :cond_3

    .line 372
    invoke-direct {p0, v2}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->updateModernTextSize(F)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 374
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    add-float/2addr p1, v2

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->scaleGesture:Landroid/widget/TextView;

    .line 375
    invoke-virtual {v0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    float-to-int p1, p1

    .line 376
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->ruleTextSize(I)I

    :goto_1
    return v3

    .line 363
    :cond_4
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->exportToSD()V

    return v2

    .line 359
    :cond_5
    invoke-direct {p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->copy()V

    return v2

    .line 367
    :cond_6
    invoke-virtual {p0, p0}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->populateData(Landroid/content/Context;)V

    return v2
.end method

.method protected abstract populateData(Landroid/content/Context;)V
.end method

.method protected abstract populateMenu(Landroid/view/SubMenu;)V
.end method

.method protected setData(Ljava/lang/String;)V
    .locals 2

    sput-object p1, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->dataText:Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 125
    new-instance v1, Ldev/ukanth/ufirewall/activity/DataDumpActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
