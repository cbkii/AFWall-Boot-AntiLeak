.class Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;
.super Ljava/lang/Thread;
.source "SanityCheckRootShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/rootshell/SanityCheckRootShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SanityCheckThread"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/stericson/rootshell/SanityCheckRootShell;


# direct methods
.method static bridge synthetic -$$Nest$mvisualUpdate(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/stericson/rootshell/SanityCheckRootShell;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->this$0:Lcom/stericson/rootshell/SanityCheckRootShell;

    .line 147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p3, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private visualUpdate(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 372
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 373
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "action"

    .line 374
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "text"

    .line 375
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->mHandler:Landroid/os/Handler;

    .line 377
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "id"

    const-string v1, " k\n\n"

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 153
    invoke-direct {p0, v3, v2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "Testing getPath"

    const/4 v4, 0x4

    .line 167
    invoke-direct {p0, v4, v2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "[ getPath ]\n"

    const/4 v5, 0x3

    .line 168
    invoke-direct {p0, v5, v2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 172
    :try_start_0
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->getPath()Ljava/util/List;

    move-result-object v2

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 182
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string v2, "Testing A ton of commands"

    .line 185
    invoke-direct {p0, v4, v2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v2, "[ Ton of Commands ]\n"

    .line 186
    invoke-direct {p0, v5, v2}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x64

    if-ge v6, v7, :cond_1

    const-string v7, "/system/xbin/busybox"

    .line 190
    invoke-static {v7}, Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const-string v6, "Testing Find Binary"

    .line 193
    invoke-direct {p0, v4, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isRootAvailable()Z

    move-result v6

    const-string v7, "[ Checking Root ]\n"

    .line 195
    invoke-direct {p0, v5, v7}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isBusyboxAvailable()Z

    move-result v6

    const-string v7, "[ Checking Busybox ]\n"

    .line 199
    invoke-direct {p0, v5, v7}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing file exists"

    .line 202
    invoke-direct {p0, v4, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "[ Checking Exists() ]\n"

    .line 203
    invoke-direct {p0, v5, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/system/sbin/["

    invoke-static {v7}, Lcom/stericson/rootshell/RootShell;->exists(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v6, "Testing Is Access Given"

    .line 206
    invoke-direct {p0, v4, v6}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/stericson/rootshell/RootShell;->isAccessGiven()Z

    move-result v6

    const-string v7, "[ Checking for Access to Root ]\n"

    .line 208
    invoke-direct {p0, v5, v7}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "Testing output capture"

    .line 214
    invoke-direct {p0, v4, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ busybox ash --help ]\n"

    .line 215
    invoke-direct {p0, v5, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 219
    :try_start_1
    invoke-static {v3}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 220
    new-instance v6, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$1;

    new-array v7, v3, [Ljava/lang/String;

    const-string v8, "busybox ash --help"

    aput-object v8, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$1;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;I[Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v1, "Switching RootContext - SYSTEM_APP"

    .line 240
    invoke-direct {p0, v4, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ Switching Root Context - SYSTEM_APP ]\n"

    .line 241
    invoke-direct {p0, v5, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 245
    :try_start_2
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellContext;->SYSTEM_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-static {v3, v1}, Lcom/stericson/rootshell/RootShell;->getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 246
    new-instance v6, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$2;

    new-array v7, v3, [Ljava/lang/String;

    aput-object v0, v7, v2

    invoke-direct {v6, p0, v2, v7}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$2;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;I[Ljava/lang/String;)V

    .line 258
    invoke-virtual {v1, v6}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string v1, "Switching RootContext - UNTRUSTED"

    .line 266
    invoke-direct {p0, v4, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    const-string v1, "[ Switching Root Context - UNTRUSTED ]\n"

    .line 267
    invoke-direct {p0, v5, v1}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;->visualUpdate(ILjava/lang/String;)V

    .line 271
    :try_start_3
    sget-object v1, Lcom/stericson/rootshell/execution/Shell$ShellContext;->UNTRUSTED_APP:Lcom/stericson/rootshell/execution/Shell$ShellContext;

    invoke-static {v3, v1}, Lcom/stericson/rootshell/RootShell;->getShell(ZLcom/stericson/rootshell/execution/Shell$ShellContext;)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v1

    .line 272
    new-instance v4, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$3;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v0, v5, v2

    invoke-direct {v4, p0, v2, v5}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$3;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;I[Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, v4}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    :goto_4
    :try_start_4
    invoke-static {v3}, Lcom/stericson/rootshell/RootShell;->getShell(Z)Lcom/stericson/rootshell/execution/Shell;

    move-result-object v0

    .line 296
    new-instance v1, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "echo done"

    aput-object v4, v3, v2

    const/16 v4, 0x2a

    invoke-direct {v1, p0, v4, v2, v3}, Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread$4;-><init>(Lcom/stericson/rootshell/SanityCheckRootShell$SanityCheckThread;IZ[Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, v1}, Lcom/stericson/rootshell/execution/Shell;->add(Lcom/stericson/rootshell/execution/Command;)Lcom/stericson/rootshell/execution/Command;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void
.end method
