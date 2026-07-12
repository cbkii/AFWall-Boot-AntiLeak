.class Leu/chainfire/libsuperuser/Shell$Interactive$7;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Leu/chainfire/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2018
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2019
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "inputstream"

    .line 2021
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2022
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;

    move-result-object p1

    invoke-virtual {p1}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    return-void

    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2027
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2028
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2029
    monitor-exit v0

    return-void

    :cond_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2035
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_2

    :goto_0
    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_1

    :cond_2
    if-lez v1, :cond_3

    .line 2040
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2041
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2045
    invoke-static {v1, p1, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2046
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v4

    invoke-static {v1, p1, v4, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2047
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v4

    invoke-static {v1, p1, v4, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2053
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 2052
    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4102(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2056
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2058
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4202(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$7;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2059
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2061
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
