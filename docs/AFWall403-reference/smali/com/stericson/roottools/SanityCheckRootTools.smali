.class public Lcom/stericson/roottools/SanityCheckRootTools;
.super Landroid/app/Activity;
.source "SanityCheckRootTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;,
        Lcom/stericson/roottools/SanityCheckRootTools$TestHandler;
    }
.end annotation


# instance fields
.field private mPDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPDialog(Lcom/stericson/roottools/SanityCheckRootTools;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollView(Lcom/stericson/roottools/SanityCheckRootTools;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 53
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 59
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    const/4 p1, 0x1

    .line 66
    sput-boolean p1, Lcom/stericson/roottools/RootTools;->debugMode:Z

    .line 68
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    const-string v0, ""

    .line 69
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    .line 72
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->setContentView(Landroid/view/View;)V

    const-string p1, "SanityCheckRootTools \n\n"

    .line 74
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 76
    invoke-static {}, Lcom/stericson/roottools/RootTools;->isRootAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Root found.\n"

    .line 77
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "Root not found"

    .line 79
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/stericson/rootshell/execution/Shell;->startRootShell()Lcom/stericson/rootshell/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stericson/rootshell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "[ ROOT DENIED EXCEPTION! ]\n"

    .line 91
    invoke-virtual {p0, v0}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p1}, Lcom/stericson/rootshell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "[ TIMEOUT EXCEPTION! ]\n"

    .line 88
    invoke-virtual {p0, v0}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/stericson/roottools/RootTools;->isAccessGiven()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ERROR: No root access to this device.\n"

    .line 97
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    .line 106
    :cond_1
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mPDialog:Landroid/app/ProgressDialog;

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 110
    new-instance p1, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;

    new-instance v0, Lcom/stericson/roottools/SanityCheckRootTools$TestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/roottools/SanityCheckRootTools$TestHandler;-><init>(Lcom/stericson/roottools/SanityCheckRootTools;Lcom/stericson/roottools/SanityCheckRootTools$TestHandler-IA;)V

    invoke-direct {p1, p0, p0, v0}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;-><init>(Lcom/stericson/roottools/SanityCheckRootTools;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/stericson/roottools/SanityCheckRootTools$SanityCheckThread;->start()V

    return-void

    :catch_3
    const-string p1, "ERROR: could not determine root access to this device.\n"

    .line 101
    invoke-virtual {p0, p1}, Lcom/stericson/roottools/SanityCheckRootTools;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected print(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mTextView:Landroid/widget/TextView;

    .line 114
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stericson/roottools/SanityCheckRootTools;->mScrollView:Landroid/widget/ScrollView;

    .line 115
    new-instance v0, Lcom/stericson/roottools/SanityCheckRootTools$1;

    invoke-direct {v0, p0}, Lcom/stericson/roottools/SanityCheckRootTools$1;-><init>(Lcom/stericson/roottools/SanityCheckRootTools;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
