.class Ldev/ukanth/ufirewall/Api$1;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/Api;->donateDialog(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    .line 3075
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancel()V

    const/4 p1, 0x0

    .line 3076
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->isDo(Z)Z

    return-void
.end method
