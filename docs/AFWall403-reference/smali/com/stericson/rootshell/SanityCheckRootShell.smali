.class public Lcom/stericson/rootshell/SanityCheckRootShell;
.super Landroid/app/Activity;
.source "SanityCheckRootShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;,
        Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;
    }
.end annotation


# instance fields
.field private mPDialog:Landroid/app/ProgressDialog;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPDialog(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mPDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScrollView(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance p1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object p1

    .line 54
    invoke-static {p1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 60
    new-instance p1, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {p1}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object p1

    .line 60
    invoke-static {p1}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    const/4 p1, 0x1

    .line 67
    sput-boolean p1, Lcom/stericson/rootshell/RootShell;->debugMode:Z

    .line 69
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mTextView:Landroid/widget/TextView;

    const-string v1, ""

    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mTextView:Landroid/widget/TextView;

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mScrollView:Landroid/widget/ScrollView;

    .line 73
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->setContentView(Landroid/view/View;)V

    const-string v0, "SanityCheckRootShell \n\n"

    .line 75
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    .line 77
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isRootAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Root found.\n"

    .line 79
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v0, "Root not found"

    .line 83
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stericson/rootshell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "[ ROOT DENIED EXCEPTION! ]\n"

    .line 102
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p1}, Lcom/stericson/rootshell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "[ TIMEOUT EXCEPTION! ]\n"

    .line 97
    invoke-virtual {p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 108
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isAccessGiven()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ERROR: No root access to this device.\n"

    .line 110
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    return-void

    .line 121
    :cond_1
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mPDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    .line 122
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mPDialog:Landroid/app/ProgressDialog;

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 125
    new-instance p1, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    new-instance v0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell;Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler-IA;)V

    invoke-direct {p1, p0, p0, v0}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {p1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->start()V

    return-void

    :catch_3
    const-string p1, "ERROR: could not determine root access to this device.\n"

    .line 116
    invoke-virtual {p0, p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected print(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mTextView:Landroid/widget/TextView;

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell;->mScrollView:Landroid/widget/ScrollView;

    .line 131
    new-instance v0, Lcom/stericson/rootshell/SanityCheckRootShell$1;

    invoke-direct {v0, p0}, Lcom/stericson/rootshell/SanityCheckRootShell$1;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell;)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
