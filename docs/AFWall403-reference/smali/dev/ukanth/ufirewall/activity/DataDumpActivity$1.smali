.class Ldev/ukanth/ufirewall/activity/DataDumpActivity$1;
.super Ljava/lang/Object;
.source "DataDumpActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/activity/DataDumpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/activity/DataDumpActivity;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/activity/DataDumpActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/DataDumpActivity;

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/activity/DataDumpActivity$1;->this$0:Ldev/ukanth/ufirewall/activity/DataDumpActivity;

    .line 314
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/activity/DataDumpActivity;->finish()V

    return-void
.end method
