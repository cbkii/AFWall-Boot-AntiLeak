.class Ldev/ukanth/ufirewall/MainActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->registerUIRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 294
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 297
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mupdateSelectedColumns(Ldev/ukanth/ufirewall/MainActivity;)V

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 298
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetselectedColumns(Ldev/ukanth/ufirewall/MainActivity;)I

    move-result p1

    const/4 p2, 0x4

    if-gt p1, p2, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetcurrentUI(Ldev/ukanth/ufirewall/MainActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 299
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->recreate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 300
    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetselectedColumns(Ldev/ukanth/ufirewall/MainActivity;)I

    move-result p1

    if-le p1, p2, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    invoke-static {p1}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetcurrentUI(Ldev/ukanth/ufirewall/MainActivity;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 301
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->recreate()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$1;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 303
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/MainActivity;->recreate()V

    :goto_0
    return-void
.end method
