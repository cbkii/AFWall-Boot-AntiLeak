.class public final synthetic Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroid/appwidget/AppWidgetManager;

.field public final synthetic f$3:[I

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

    iput-object p2, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$2:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$3:[I

    iput-boolean p5, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$4:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$0:Ldev/ukanth/ufirewall/widget/StatusWidget;

    iget-object v1, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget-object v2, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$2:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$3:[I

    iget-boolean v4, p0, Ldev/ukanth/ufirewall/widget/StatusWidget$$ExternalSyntheticLambda0;->f$4:Z

    invoke-static {v0, v1, v2, v3, v4}, Ldev/ukanth/ufirewall/widget/StatusWidget;->$r8$lambda$Bk7tZIEmI0bQFHo7xVaFFEbMZSE(Ldev/ukanth/ufirewall/widget/StatusWidget;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[IZ)V

    return-void
.end method
