.class Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;
.super Lcom/stericson/rootshell/execution/Command;
.source "AppDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/AppDetailActivity;->setTotalBytesManual(Landroid/widget/TextView;Landroid/widget/TextView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/AppDetailActivity;

.field final synthetic val$down:Landroid/widget/TextView;


# direct methods
.method varargs constructor <init>(Ldev/ukanth/ufirewall/activity/AppDetailActivity;I[Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/AppDetailActivity;

    iput-object p4, p0, Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;->val$down:Landroid/widget/TextView;

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/stericson/rootshell/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandOutput(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/activity/AppDetailActivity$1;->val$down:Landroid/widget/TextView;

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ldev/ukanth/ufirewall/activity/AppDetailActivity;->humanReadableByteCount(JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-super {p0, p1, p2}, Lcom/stericson/rootshell/execution/Command;->commandOutput(ILjava/lang/String;)V

    return-void
.end method
