Return-Path: <usb-storage+bncBDAMN6NI5EERBQWD6XVAKGQESKEZLOQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x748.google.com (mail-qk1-x748.google.com [IPv6:2607:f8b0:4864:20::748])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E46797E8E
	for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 17:22:44 +0200 (CEST)
Received: by mail-qk1-x748.google.com with SMTP id s23sf2484455qkg.1
        for <lists+usb-storage@lfdr.de>; Wed, 21 Aug 2019 08:22:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566400963; cv=pass;
        d=google.com; s=arc-20160816;
        b=pgbg1P2mFdGUtJaFoNKZVHpTJzwiG+OfG27HCmOdOAO5a32fdqV9aCZJD6TwVQP2bV
         MDNtcvhL9mQpwMtBXPSdUYLxMU0L6MPilbYIXAVLvDMhaQKofpIPZJXXZUPcU2u/09oi
         BJBnMINBVXPCfioIG5OrluAptEhh8QWAqh+8eOI8qSH2FGJXnEYt/J6iarQvpxdIu9fb
         Q6qPINNPf9Ug4BM1oiJbhbjeLMSOgwoTqXl7EOMAYBzDqSmojDgFRVLocldghWWz53kg
         qOo5+slU2JmV/4XMDQvp7C/rdSZJwnQStQV3eN/5bFPTG16CoVlE440I8sdYQ0xoEsSn
         oZiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :message-id:in-reply-to:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=RgZwajWGbd7GxUrwW/tDWa02MM9V0Zwi3w+mJmc6AM4=;
        b=ATAK89riAnvcaH/Hd5ZcG3E/PF2BzO6qYI0UThSnHLWUIiQ7umxinG+9LqdWQPBg1E
         5C2rAaNAIH6/MGwZbBK+bcX2ZOmHFKq0sgtLFMAES6LPSUNLAjXkjwbQ+hbEz+AQtFn/
         WOu/nB9UnNFke2TWYbBqytNnGTMIl8394AFBWbu2vf+9AL/aS3Bq5taMDlYacBCrFEzM
         tqWKOZG84o2amjORDjrx9IWFfI9nDWlQB89fdxi/vlZokwL0lUES9a/0zB5WWAjb1yhi
         hIr7NmcxAlguywP1EICFKuNll4HIknVtPNJmf3d1BGx6QxZD/mwxYzc87lEnWePq88e2
         v9lw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RgZwajWGbd7GxUrwW/tDWa02MM9V0Zwi3w+mJmc6AM4=;
        b=KaueiwdgTH5wtdTFB1yJHG7+TYLhf8+D/mtvfl1Adk5bQ6pCjq8KmOeBh3xTJfwZlA
         7vGUdE4eHfgMA5XxHLisieSHlusRMbsQ0bReyCZglOMOYhVwqqbrwXcebE/MBpPuc3VX
         xs4nFjNK8rQGjyaidBA5gduptpSEYdzTDcRbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RgZwajWGbd7GxUrwW/tDWa02MM9V0Zwi3w+mJmc6AM4=;
        b=e/SFnO0rZurOPAOMUkPQvyIJvwQFtFpx/OxHHQawVSaI82Czj4x9thwJOM92gvF7AC
         JPAVFR6Gl+DI2NWTx/vghFf9MaN1uSauT3ev8Slo1VaRao4GYphw/LlKOqO5WeDyVbEP
         wzzxEi010oQn6724kPdZy3r4529y7cMl8QdQJatnlDTfUwyo0mAf4NM+eAv9lUovYIDV
         8O9LxCKfnW4gqy7Ch1MO8zphFdXmLMq0k+EdmFyS4OxBGDAugiO14Q2sPGeSVbtl3cjP
         cgbpymB2H8MOf3Cen5ovpJJN97i7tzlbKEiSDwuV+w8Xe4OHi47rnmHLjonp4RKrego1
         E7ow==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXUBMG2rgggYUNY52qjkfu3dUvusBtbFWOckQ3nH2eDUuklf5Ra
	FiN7J/Qh7tSE3WVpCdvqzEa3ng==
X-Google-Smtp-Source: APXvYqzYpyaip3Jc/ZOa34heIdX1AVGrgb/W1QeEM7X/Z8CoT9EVo7K2xGy3anUHZ5CjhUHU4sGtrg==
X-Received: by 2002:ac8:138d:: with SMTP id h13mr32235291qtj.276.1566400963114;
        Wed, 21 Aug 2019 08:22:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4a96:: with SMTP id x144ls658290qka.15.gmail; Wed, 21
 Aug 2019 08:22:42 -0700 (PDT)
X-Received: by 2002:a05:620a:1467:: with SMTP id j7mr29641833qkl.445.1566400962858;
        Wed, 21 Aug 2019 08:22:42 -0700 (PDT)
Received: by 2002:ae9:eb07:0:0:0:0:0 with SMTP id b7msqkg;
        Wed, 21 Aug 2019 06:21:43 -0700 (PDT)
X-Received: by 2002:a5d:634c:: with SMTP id b12mr39604570wrw.127.1566393703183;
        Wed, 21 Aug 2019 06:21:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566393703; cv=none;
        d=google.com; s=arc-20160816;
        b=F2LP0hLX3FJoHdVo3qIOc8INiKqgvYGH5Q/ff9YHq0wINOcECixxxiWI39qeeA8uEM
         XkRWGpK5m/HphM484W8xGNIxsO0xmf29aXtp2h4L5eFbrdsNfU7wGu7R74xqzCU6+eGC
         QXkH9gEOckaPFdbw8ttihdeiJ95MitnwgSaFgiM2+mDkSzRYz379ZCFuXbIBR2ix3o7r
         YPeIDhcDTRmbuyjKtwJ7ImG5mG7dlr9rJsF3IfNQN9EzBzdO+NtjyjrIrV4YCsi7EVff
         W/szOuQd9ydLwPK911fgv7yRGM5LTCz8nvIS9O54tD44su4fJEZqC5Hj7sFnNf9/r9kf
         tC+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GRy++MTupyldKC75dx/9Wt6knQM16C5dPGXQxgVYGoo=;
        b=XgiooRzvHYVenAUCMcxN9QqvlT6XMoOdlC0IQk8/XDN+n6zzaBaanAzP+LDdBRHGfw
         /0PYZ8F+2bE8nCfLvuRZMm04IDzCQvl/n6qYABwV8n37u/yR7yKA+sxBpUJhKHBztqBd
         6F335kp14FsUknQFZ7k0BbYenAEdfFCKEIwtNZeesTiIUQJYLt2e8MRPrfwgVLr0zKNd
         hywXxhIOyaBXqMKbL9pY9ucUTlEU9FIqp9kg/xT+T23P8pAEB7W40foU9cZNhUgkENsi
         r2qYaZnfV8lflSTg61USf+Vl2cB0FsPadufOtx6STY0Ko+hLMvtitrsyQSFwDLWvVeq2
         KonQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by mx.google.com with ESMTPS id i12si15637275wrn.69.2019.08.21.06.21.43
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 21 Aug 2019 06:21:43 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tglx@linutronix.de>)
	id 1i0QYG-0004pb-4X; Wed, 21 Aug 2019 15:21:24 +0200
Date: Wed, 21 Aug 2019 15:21:22 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Matthias Maennich <maennich@google.com>
cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de, 
    geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com, 
    jeyu@kernel.org, joel@joelfernandes.org, kstewart@linuxfoundation.org, 
    linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org, 
    linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org, 
    lucas.de.marchi@gmail.com, maco@android.com, maco@google.com, 
    michal.lkml@markovi.net, mingo@redhat.com, oneukum@suse.com, 
    pombredanne@nexb.com, sam@ravnborg.org, sspatil@google.com, 
    stern@rowland.harvard.edu, usb-storage@lists.one-eyed-alien.net, 
    x86@kernel.org, yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 09/11] usb-storage: remove single-use
 define for debugging
In-Reply-To: <20190821114955.12788-10-maennich@google.com>
Message-ID: <alpine.DEB.2.21.1908211520360.2223@nanos.tec.linutronix.de>
References: <20190813121733.52480-1-maennich@google.com> <20190821114955.12788-1-maennich@google.com> <20190821114955.12788-10-maennich@google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

On Wed, 21 Aug 2019, Matthias Maennich wrote:

> USB_STORAGE was defined as "usb-storage: " and used in a single location
> as argument to printk. In order to be able to use the name
> 'USB_STORAGE', drop the definition and use the string directly for the
> printk call.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  drivers/usb/storage/debug.h    | 2 --
>  drivers/usb/storage/scsiglue.c | 2 +-
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/storage/debug.h b/drivers/usb/storage/debug.h
> index 6d64f342f587..16ce06039a4d 100644
> --- a/drivers/usb/storage/debug.h
> +++ b/drivers/usb/storage/debug.h
> @@ -29,8 +29,6 @@
>  
>  #include <linux/kernel.h>
>  
> -#define USB_STORAGE "usb-storage: "
> -
>  #ifdef CONFIG_USB_STORAGE_DEBUG
>  void usb_stor_show_command(const struct us_data *us, struct scsi_cmnd *srb);
>  void usb_stor_show_sense(const struct us_data *us, unsigned char key,
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 05b80211290d..df4de8323eff 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -379,7 +379,7 @@ static int queuecommand_lck(struct scsi_cmnd *srb,
>  
>  	/* check for state-transition errors */
>  	if (us->srb != NULL) {
> -		printk(KERN_ERR USB_STORAGE "Error in %s: us->srb = %p\n",
> +		printk(KERN_ERR "usb-storage: Error in %s: us->srb = %p\n",
>  			__func__, us->srb);

The proper fix for this is to use pr_fmt and convert the printk to pr_err().

Thanks,

	tglx

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/alpine.DEB.2.21.1908211520360.2223%40nanos.tec.linutronix.de.
