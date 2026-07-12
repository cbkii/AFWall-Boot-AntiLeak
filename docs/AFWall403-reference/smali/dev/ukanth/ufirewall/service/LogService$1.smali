.class Ldev/ukanth/ufirewall/service/LogService$1;
.super Lcom/topjohnwu/superuser/CallbackList;
.source "LogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/service/LogService;->startLogService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/topjohnwu/superuser/CallbackList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/service/LogService;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/service/LogService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/service/LogService$1;->this$0:Ldev/ukanth/ufirewall/service/LogService;

    .line 211
    invoke-direct {p0}, Lcom/topjohnwu/superuser/CallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onAddElement(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 211
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/service/LogService$1;->onAddElement(Ljava/lang/String;)V

    return-void
.end method

.method public onAddElement(Ljava/lang/String;)V
    .locals 2

    const-string v0, "suspend exit"

    .line 215
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PM: suspend exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService$1;->this$0:Ldev/ukanth/ufirewall/service/LogService;

    .line 216
    sget-object v1, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/service/LogService;->-$$Nest$mrestartWatcher(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    :cond_1
    const-string v0, "log_buf_len"

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Buffer wrap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService$1;->this$0:Ldev/ukanth/ufirewall/service/LogService;

    .line 221
    sget-object v1, Ldev/ukanth/ufirewall/service/LogService;->logPath:Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/service/LogService;->-$$Nest$mrestartWatcher(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;)V

    :cond_3
    const-string v0, "{AFL}"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Ldev/ukanth/ufirewall/service/LogService$1;->this$0:Ldev/ukanth/ufirewall/service/LogService;

    .line 226
    invoke-virtual {v0}, Ldev/ukanth/ufirewall/service/LogService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ldev/ukanth/ufirewall/service/LogService;->-$$Nest$mstoreLogInfo(Ldev/ukanth/ufirewall/service/LogService;Ljava/lang/String;Landroid/content/Context;)V

    :cond_4
    return-void
.end method
