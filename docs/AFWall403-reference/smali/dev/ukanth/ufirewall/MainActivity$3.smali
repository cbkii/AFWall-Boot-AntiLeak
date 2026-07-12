.class Ldev/ukanth/ufirewall/MainActivity$3;
.super Ldev/ukanth/ufirewall/service/RootCommand$Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/MainActivity;->probeLogTarget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/MainActivity;

.field final synthetic val$availableLogTargets:Ljava/util/List;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/MainActivity;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$3;->this$0:Ldev/ukanth/ufirewall/MainActivity;

    iput-object p2, p0, Ldev/ukanth/ufirewall/MainActivity$3;->val$availableLogTargets:Ljava/util/List;

    .line 338
    invoke-direct {p0}, Ldev/ukanth/ufirewall/service/RootCommand$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public cbFunc(Ldev/ukanth/ufirewall/service/RootCommand;)V
    .locals 4

    .line 340
    iget v0, p1, Ldev/ukanth/ufirewall/service/RootCommand;->exitCode:I

    if-eqz v0, :cond_0

    return-void

    .line 343
    :cond_0
    iget-object p1, p1, Ldev/ukanth/ufirewall/service/RootCommand;->res:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    const-string v3, "LOG"

    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NFLOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Ldev/ukanth/ufirewall/MainActivity$3;->val$availableLogTargets:Ljava/util/List;

    .line 345
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ldev/ukanth/ufirewall/MainActivity$3;->val$availableLogTargets:Ljava/util/List;

    .line 348
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, ","

    iget-object v0, p0, Ldev/ukanth/ufirewall/MainActivity$3;->val$availableLogTargets:Ljava/util/List;

    .line 349
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/G;->logTargets(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    return-void
.end method
