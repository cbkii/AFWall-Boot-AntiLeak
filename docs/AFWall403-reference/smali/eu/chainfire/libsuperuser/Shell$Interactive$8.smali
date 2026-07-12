.class Leu/chainfire/libsuperuser/Shell$Interactive$8;
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

    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2065
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLine(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2068
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2069
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2070
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2075
    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    const/4 v2, 0x0

    .line 2079
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v3, 0x1

    .line 2083
    invoke-static {v2, p1, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2084
    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v4

    invoke-static {v2, p1, v4, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2085
    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v4

    invoke-static {v2, p1, v4, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2086
    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v4

    invoke-static {v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v4

    invoke-static {v2, p1, v4, v3}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_3
    if-ltz v1, :cond_4

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2090
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4502(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;

    iget-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive$8;->this$0:Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 2091
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2093
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
