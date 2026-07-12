.class Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;
.super Ljava/lang/Object;
.source "AppListArrayAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->addEventListenter(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

.field final synthetic val$holder:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;


# direct methods
.method constructor <init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter;Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;->this$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;->val$holder:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 471
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isPressed()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;->val$holder:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    .line 472
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p1

    iget-boolean p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;->val$holder:Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    .line 473
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p1

    iput-boolean p2, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->selected_lan:Z

    const/4 p1, 0x1

    .line 474
    sput-boolean p1, Ldev/ukanth/ufirewall/MainActivity;->dirty:Z

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$1;->this$0:Ldev/ukanth/ufirewall/util/AppListArrayAdapter;

    .line 475
    invoke-virtual {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
