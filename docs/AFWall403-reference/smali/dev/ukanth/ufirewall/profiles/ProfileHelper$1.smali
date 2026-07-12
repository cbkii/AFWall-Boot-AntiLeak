.class Ldev/ukanth/ufirewall/profiles/ProfileHelper$1;
.super Ljava/lang/Object;
.source "ProfileHelper.java"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/database/transaction/ITransaction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/profiles/ProfileHelper;->storeProfile(Ldev/ukanth/ufirewall/profiles/ProfileData;Landroid/content/Context;Ldev/ukanth/ufirewall/profiles/ProfileData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$profile:Ldev/ukanth/ufirewall/profiles/ProfileData;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/profiles/ProfileData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/profiles/ProfileHelper$1;->val$profile:Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/profiles/ProfileHelper$1;->val$profile:Ldev/ukanth/ufirewall/profiles/ProfileData;

    .line 30
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/profiles/ProfileData;->save(Lcom/raizlabs/android/dbflow/structure/database/DatabaseWrapper;)Z

    return-void
.end method
