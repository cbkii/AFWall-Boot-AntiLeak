.class Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;
.super Landroid/os/Handler;
.source "SanityCheckRootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/SanityCheckRootShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHandler"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTION_DISPLAY:I = 0x3

.field public static final ACTION_HIDE:I = 0x2

.field public static final ACTION_PDISPLAY:I = 0x4

.field public static final ACTION_SHOW:I = 0x1

.field public static final TEXT:Ljava/lang/String; = "text"


# instance fields
.field final synthetic this$0:Lcom/stericson/rootshell/SanityCheckRootShell;


# direct methods
.method private constructor <init>(Lcom/stericson/rootshell/SanityCheckRootShell;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 381
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/rootshell/SanityCheckRootShell;Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 392
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 393
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 410
    invoke-static {v0}, Lcom/stericson/rootshell/SanityCheckRootShell;->-$$Nest$fgetmPDialog(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 407
    invoke-virtual {v0, p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 403
    invoke-virtual {v0, p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->print(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 404
    invoke-static {p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->-$$Nest$fgetmPDialog(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->hide()V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 398
    invoke-static {p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->-$$Nest$fgetmPDialog(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$TestHandler;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 399
    invoke-static {p1}, Lcom/stericson/rootshell/SanityCheckRootShell;->-$$Nest$fgetmPDialog(Lcom/stericson/rootshell/SanityCheckRootShell;)Landroid/app/ProgressDialog;

    move-result-object p1

    const-string v0, "Running Root Library Tests..."

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
