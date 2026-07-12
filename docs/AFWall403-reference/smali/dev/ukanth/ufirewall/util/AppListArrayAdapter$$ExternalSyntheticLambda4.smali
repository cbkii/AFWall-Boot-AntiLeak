.class public final synthetic Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda4;->f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$$ExternalSyntheticLambda4;->f$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    invoke-static {v0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->lambda$updateDataUsageStats$6(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V

    return-void
.end method
