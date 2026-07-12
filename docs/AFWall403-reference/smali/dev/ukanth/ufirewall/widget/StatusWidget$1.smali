.class Ldev/ukanth/ufirewall/widget/StatusWidget$1;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "StatusWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/widget/StatusWidget;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$manager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$widgetIds:[I


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->this$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$widgetIds:[I

    .line 85
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 5

    .line 87
    iget v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 88
    :goto_0
    iget p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->this$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

    iget-object v2, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$widgetIds:[I

    .line 90
    invoke-static {p1, v2, v3, v4}, Ldev/ukanth/ufirewall/widget/StatusWidget;->-$$Nest$mshowErrorState(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->this$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

    iget-object v2, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$manager:Landroid/appwidget/AppWidgetManager;

    iget-object v4, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$widgetIds:[I

    .line 93
    invoke-static {p1, v2, v3, v4, v0}, Ldev/ukanth/ufirewall/widget/StatusWidget;->-$$Nest$mshowSuccessState(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    :goto_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$1;->val$context:Landroid/content/Context;

    .line 96
    invoke-static {p1, v0, v1}, Ldev/ukanth/ufirewall/Api;->setEnabled(Landroid/content/Context;ZZ)V

    return-void
.end method
