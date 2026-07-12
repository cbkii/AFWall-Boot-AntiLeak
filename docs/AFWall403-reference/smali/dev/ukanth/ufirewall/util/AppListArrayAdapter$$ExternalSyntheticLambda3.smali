.class public final synthetic Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;->f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;->f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$updateDataUsageStats$5(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;Ljava/lang/String;)V

    return-void
.end method
