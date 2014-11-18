.class public interface abstract Lcom/yeptelecom/settings/ext/IAudioProfileExt;
.super Ljava/lang/Object;
.source "IAudioProfileExt.java"


# virtual methods
.method public abstract createView(I)Landroid/view/View;
.end method

.method public abstract getPrefImageView(I)Landroid/view/View;
.end method

.method public abstract getPrefRadioButton(I)Landroid/view/View;
.end method

.method public abstract getPreferenceSummary(I)Landroid/view/View;
.end method

.method public abstract getPreferenceTitle(I)Landroid/view/View;
.end method

.method public abstract onPreferenceTreeClick(Lcom/yeptelecom/audioprofile/AudioProfileManager$Scenario;Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRingerVolume(Landroid/media/AudioManager;I)V
.end method

.method public abstract setRingtonePickerParams(Landroid/content/Intent;)V
.end method

.method public abstract setVolume(Landroid/media/AudioManager;II)V
.end method
