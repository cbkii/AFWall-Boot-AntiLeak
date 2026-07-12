.class public final synthetic Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/G$$ExternalSyntheticLambda1;->f$0:Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/util/G;->lambda$storeDefaultConnection$2(Ldev/ukanth/ufirewall/preferences/DefaultConnectionPref;Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V

    return-void
.end method
