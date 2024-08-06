﻿using Android.Content;
using Android.Content.Res;
using Android.Graphics.Drawables;
using AppPallet;
using AppPallet.Droid;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(CustomEntryEnable), typeof(CustomEntryEnableRenderer))]
namespace AppPallet.Droid
{
    public class CustomEntryEnableRenderer : EntryRenderer
    {
        // Construtor atualizado para aceitar um Context
        public CustomEntryEnableRenderer(Context context) : base(context)
        {
        }

        protected override void OnElementChanged(ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged(e);

            if (e.NewElement != null)
            {
                // Previne a edição do texto
                Control.Touch += (sender, args) => args.Handled = true;
                Control.Focusable = false;
                Control.FocusableInTouchMode = false;
            }

            if (Control != null)
            {
                GradientDrawable gd = new GradientDrawable();
                gd.SetColor(global::Android.Graphics.Color.Transparent);
                this.Control.SetBackground(gd);
                Control.SetHintTextColor(ColorStateList.ValueOf(global::Android.Graphics.Color.Gray));
            }
        }
    }
}