.class Ldev/ukanth/ufirewall/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
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

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$9;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1100
    invoke-static {}, Ldev/ukanth/ufirewall/util/G;->sortBy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "s2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :pswitch_1
    const-string v1, "s1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :pswitch_2
    const-string v1, "s0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$9;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1108
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_uid:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$9;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1105
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_lastupdate:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$9;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1102
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$fgetmainMenu(Ldev/ukanth/ufirewall/MainActivity;)Landroid/view/Menu;

    move-result-object v0

    sget v1, Ldev/ukanth/ufirewall/R$id;->sort_default:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$9;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    .line 1112
    invoke-static {v0}, Ldev/ukanth/ufirewall/MainActivity;->-$$Nest$mrefreshHeader(Ldev/ukanth/ufirewall/MainActivity;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe1d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
