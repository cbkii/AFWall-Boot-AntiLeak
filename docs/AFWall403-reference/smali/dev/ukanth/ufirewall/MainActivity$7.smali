.class Ldev/ukanth/ufirewall/MainActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->registerUIbroadcast6()V
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$7;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 475
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 478
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$7;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 479
    invoke-static {p2}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$7;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 480
    invoke-static {p2}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetrunProgress(Ldev/ukanth/ufirewall/MainActivity;)Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object p2

    sget v0, Ldev/ukanth/ufirewall/R$id;->apply6:I

    invoke-virtual {p2, v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INDEX"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SIZE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {p2}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method
