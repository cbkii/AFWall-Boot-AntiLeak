.class Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "AppListArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/AppListArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask-IA;)V
    .locals 0

    invoke-direct {p0}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    .line 690
    :try_start_0
    aget-object v1, p1, v0

    check-cast v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;

    const/4 v2, 0x1

    .line 691
    aget-object v3, p1, v2

    check-cast v3, Landroid/content/pm/PackageManager;

    const/4 v4, 0x2

    .line 692
    aget-object p1, p1, v4

    check-cast p1, Landroid/view/View;

    .line 693
    iget-boolean v4, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->icon_loaded:Z

    if-nez v4, :cond_0

    .line 694
    new-instance v4, Landroid/graphics/drawable/ScaleDrawable;

    iget-object v5, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->appinfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v5, 0x42000000    # 32.0f

    invoke-direct {v4, v3, v0, v5, v5}, Landroid/graphics/drawable/ScaleDrawable;-><init>(Landroid/graphics/drawable/Drawable;IFF)V

    invoke-virtual {v4}, Landroid/graphics/drawable/ScaleDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/16 v4, 0x20

    .line 695
    invoke-virtual {v3, v0, v0, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 696
    iput-object v3, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->cached_icon:Landroid/graphics/drawable/Drawable;

    .line 697
    iput-boolean v2, v1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->icon_loaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "AFWall"

    const-string v1, "Error loading icon"

    .line 704
    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 686
    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;->doInBackground([Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/view/View;)V
    .locals 2

    .line 714
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;

    .line 715
    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgeticon(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;->-$$Nest$fgetapp(Ldev/ukanth/ufirewall/util/AppListArrayAdapter$AppStateHolder;)Ldev/ukanth/ufirewall/Api$PackageInfoData;

    move-result-object p1

    iget-object p1, p1, Ldev/ukanth/ufirewall/Api$PackageInfoData;->cached_icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AFWall"

    const-string v1, "Error showing icon"

    .line 717
    invoke-static {v0, v1, p1}, Ldev/ukanth/ufirewall/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 686
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Ldev/ukanth/ufirewall/util/AppListArrayAdapter$LoadIconTask;->onPostExecute(Landroid/view/View;)V

    return-void
.end method
