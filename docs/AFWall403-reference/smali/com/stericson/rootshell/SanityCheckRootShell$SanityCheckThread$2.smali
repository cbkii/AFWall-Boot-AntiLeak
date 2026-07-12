.class Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$2;
.super Lcom/stericson/rootshell/execution/Command;
.source "SanityCheckRootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;


# direct methods
.method varargs constructor <init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$2;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    .line 249
    invoke-direct {p0, p2, p3}, Lcom/stericson/rootshell/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$2;->this$1:Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->-$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V

    .line 255
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
