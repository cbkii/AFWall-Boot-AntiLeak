.class Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;
.super Landroid/util/Pair;
.source "RootServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/topjohnwu/superuser/internal/RootServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Landroid/content/ComponentName;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Z)V
    .locals 0

    .line 370
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getName()Landroid/content/ComponentName;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method isDaemon()Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/topjohnwu/superuser/internal/RootServiceManager$ServiceKey;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
