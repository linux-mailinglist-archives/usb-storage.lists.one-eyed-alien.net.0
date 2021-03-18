Return-Path: <usb-storage+bncBDRZXY4CYYORB2PXZSBAMGQEHM67OBY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 168B43404C5
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 12:39:22 +0100 (CET)
Received: by mail-ed1-x546.google.com with SMTP id w16sf21035792edc.22
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 04:39:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616067561; cv=pass;
        d=google.com; s=arc-20160816;
        b=F4CXMKkdGW2Dc45zJdnvID3K3DSEy+Csp/gVkDmYz9Rp89vOzNoEjkU58xatbRqWSl
         lFLz84PLpBzCbJqHeCiJYzIdptX6u4mQLTzkyrrSPSg9JoFGEarDtrcxl+LpKqk2rzsZ
         fdAgRFGZa/vVX2PjpjdihizHeEMHG+U0zPsAv8UiJSDA9jtI2xBVxGFuWPFrdD7X5K8u
         Cf8yD2jfC9bArgHjN6ekdKbFkDKY8m+3SmR+rjH0nk2IOFvUE7zcaNRT/tEglCfj4r/1
         yhZ3ND41hWvzlAma0S/DjWj5l1nrO6hO6IhoQapLFlvsyfy8A0Dd/rDJeQxNwfwmO73n
         JXgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=MQd1n7k9QYE4ubZgTcS0lVUbCtcuCVXSP7cOxd036sc=;
        b=FUGOFuNJGpGgicpQm5Gu0VAi+Su609GQTQDSZ5utH9fSiYuisyelWmSGZzWpuUj4/l
         I2+kIh/VsUsIST0GV51q+Dx5xQl+Ncuvsln/KF8rBcEm8RLBf3H20ZalKw8vSgnKsxtS
         O6smc8/e+UtYnL5OrSC2HPrLjKzCjlePgKdZ9ghdxdf+Z7cgZCAnnGth6MJKq1H+wMi0
         P5w0ozqba+nqS4DfN4H4j8DqTtpRI6j0xmYxDFx+84hDYGqaADobibKX/GnD/1lw1Avp
         ze0JNsR2onsWX0aCSWKX/NuEsN0WaPShQf8KJOINxxm3Wb1Y4QGzZkhcGzf9jyO5+WCC
         3Tdw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UPPLNRNT;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MQd1n7k9QYE4ubZgTcS0lVUbCtcuCVXSP7cOxd036sc=;
        b=gEwfk9Lc81WnYLoTQaXr18iCwQ2q2lJr36E3oXn2QpAf6h0jhY9p8AEuv8iy124r7I
         1rUTz+AfpOGteOxZQ2uVoNBGVgCybRXsenvL1rA7a7VI/gXW6hYOnm3WpuWX3l8bkS+y
         i46TMOcJx/hqXtLYA+v6gpv0nyWQ7WwdAkGVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MQd1n7k9QYE4ubZgTcS0lVUbCtcuCVXSP7cOxd036sc=;
        b=qDSVKc+nKwpBDk4clBPg+y/p7ooKRoUCKYL5bPFRnfhBaJFRnoFpitgFGFA7aT69Yo
         u+lFK+REGH0Jry9EzYAvGyPaoyG2TYNV+uPU4xgmq8qE1bsRMHR42h6suzArnc1WfmEz
         cbGtV41ytQVigGsYBCT1B3ewJgUXcZ7v+BYVmco1t3uq56naY5fhrDXFUEn/mRm6KzJg
         Eb5OYlw9exUthfj8zI7l/xa1KgP7NJRtyzSL/ya1DJnIUjgHkj1/E+EJzldN1Q+4uioU
         1Y1/HHsc+Tuw15AXp7K66D93V406fr1XdbnN6kAsu5DEZJpEznM8a0WIiFtIXk7sgQ57
         COgA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530AboAQ/lOg7oOzDF0uP7RGRTYjb9GyzqvxgXjRfeSp7DTN9aEl
	ZLirl7G7jrIlamftp2/TEO0rRQ==
X-Google-Smtp-Source: ABdhPJzDn8agDAEOGdRqFwo611W5JgKnZm6K5o9DmlGr69In4d5RrjTGj6LJ7rdwOut3QIoQ/WZsQA==
X-Received: by 2002:a17:906:719b:: with SMTP id h27mr39998851ejk.123.1616067561737;
        Thu, 18 Mar 2021 04:39:21 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:906:c192:: with SMTP id g18ls1070759ejz.10.gmail; Thu,
 18 Mar 2021 04:39:20 -0700 (PDT)
X-Received: by 2002:a17:907:77d4:: with SMTP id kz20mr40668390ejc.93.1616067560419;
        Thu, 18 Mar 2021 04:39:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616067560; cv=none;
        d=google.com; s=arc-20160816;
        b=0qivzHm+A0uBw6GMvvAr2yU0P61AJxf+pf0gFBWtzV04MXZzoEx/6pfVYd1W71X817
         iMauctOAfeC+rPoZzLQToIaIPCu/fr4/8lMx8myNCN0f5GRX9PXhAZuSqN9I+4FrB/hL
         R8EAOatM1iB9UdOjC+fUaOExMHx+x1zUk+Waj0I2gPVyUNtOxGRKajZ/sqcNswau4P9d
         XGQ8k/yGrs2M1CJxSMMH1dfIyLSuX4bw+o89DJFU2Sev30VhC0x2RhK161nV+2DBQZtE
         CRVcoOx245RaX8MUphq+/BDlg2cZmfSqTG7mo3L7bkqovkT+y//NG/TkHFYwIWSvzD7P
         oiMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2YmpqDQt5KeCE/abss4w9k89C4ih1OjQ6xthHLSq/P4=;
        b=FXkVO11yrv+5mNokRwhoRmdmw97JIMbFkwIxeyFnJ8OIWVR3fQl8el4mQdOEKI080C
         gkqjptQsuIB0HMoyfKQ6XRuxJfMMqRt1/dqyzY5b6EusNcDFysCmZ4qNM4ng7CE6SEuH
         zcouYjGfzS1IGK8Xjk354/zaXvIJmV/23S0A4XExjw6qezw3migqJFkyblmAlKqvZluB
         W3IrMVO8jb0VC3G0pq3IgLEOCTE9Swi+09ur4DzR1nrfMogxZHMBoRUFp/Sxq8VQe7Sc
         UYDqZedjQpQBJIdHnI5640xKlOVKOV+esM8JTYREOk3mTEJbaOfQsrMKSUsPIwznTmg7
         1zxQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=UPPLNRNT;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by mx.google.com with ESMTPS id hy25si1335622ejc.333.2021.03.18.04.39.20
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 04:39:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-FA-_7VwrO7ywY_FBQEwJ0w-1; Thu, 18 Mar 2021 07:39:18 -0400
X-MC-Unique: FA-_7VwrO7ywY_FBQEwJ0w-1
Received: by mail-ed1-f69.google.com with SMTP id o24so20965727edt.15
        for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 04:39:17 -0700 (PDT)
X-Received: by 2002:a05:6402:304b:: with SMTP id bu11mr2960187edb.157.1616067552854;
        Thu, 18 Mar 2021 04:39:12 -0700 (PDT)
X-Received: by 2002:a05:6402:304b:: with SMTP id bu11mr2960171edb.157.1616067552670;
        Thu, 18 Mar 2021 04:39:12 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id g25sm1800026edp.95.2021.03.18.04.39.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Mar 2021 04:39:12 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH] usb-storage: Add quirk to defeat Kindle's
 automatic unload
To: Alan Stern <stern@rowland.harvard.edu>, Greg KH <greg@kroah.com>
Cc: Matthias Schwarzott <zzam@gentoo.org>,
 usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
 systemd-devel@lists.freedesktop.org, hirofumi@mail.parknet.co.jp
References: <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <5f8c0755-0884-f505-c4e8-3a5e89001d58@gentoo.org>
 <20210317190654.GA497856@rowland.harvard.edu>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7ca46439-6b7c-ecf1-3e4f-a3a7da868a64@redhat.com>
Date: Thu, 18 Mar 2021 12:39:11 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210317190654.GA497856@rowland.harvard.edu>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: hdegoede@redhat.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=UPPLNRNT;
       spf=pass (google.com: domain of hdegoede@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
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

Hi,

On 3/17/21 8:06 PM, Alan Stern wrote:
> Matthias reports that the Amazon Kindle automatically removes its
> emulated media if it doesn't receive another SCSI command within about
> one second after a SYNCHRONIZE CACHE.  It does so even when the host
> has sent a PREVENT MEDIUM REMOVAL command.  The reason for this
> behavior isn't clear, although it's not hard to make some guesses.
> 
> At any rate, the results can be unexpected for anyone who tries to
> access the Kindle in an unusual fashion, and in theory they can lead
> to data loss (for example, if one file is closed and synchronized
> while other files are still in the middle of being written).
> 
> To avoid such problems, this patch creates a new usb-storage quirks
> flag telling the driver always to issue a REQUEST SENSE following a
> SYNCHRONIZE CACHE command, and adds an unusual_devs entry for the
> Kindle with the flag set.  This is sufficient to prevent the Kindle
> from doing its automatic unload, without interfering with proper
> operation.
> 
> Another possible way to deal with this would be to increase the
> frequency of TEST UNIT READY polling that the kernel normally carries
> out for removable-media storage devices.  However that would increase
> the overall load on the system and it is not as reliable, because the
> user can override the polling interval.  Changing the driver's
> behavior is safer and has minimal overhead.
> 
> Reported-and-tested-by: Matthias Schwarzott <zzam@gentoo.org>
> Signed-off-by: Alan Stern <stern@rowland.harvard.edu>
> CC: <stable@vger.kernel.org>

Thanks, patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> 
> ---
> 
> 
> [as1953]
> 
> 
>  drivers/usb/storage/transport.c    |    7 +++++++
>  drivers/usb/storage/unusual_devs.h |   12 ++++++++++++
>  include/linux/usb_usual.h          |    2 ++
>  3 files changed, 21 insertions(+)
> 
> Index: usb-devel/drivers/usb/storage/transport.c
> ===================================================================
> --- usb-devel.orig/drivers/usb/storage/transport.c
> +++ usb-devel/drivers/usb/storage/transport.c
> @@ -656,6 +656,13 @@ void usb_stor_invoke_transport(struct sc
>  		need_auto_sense = 1;
>  	}
>  
> +	/* Some devices (Kindle) require another command after SYNC CACHE */
> +	if ((us->fflags & US_FL_SENSE_AFTER_SYNC) &&
> +			srb->cmnd[0] == SYNCHRONIZE_CACHE) {
> +		usb_stor_dbg(us, "-- sense after SYNC CACHE\n");
> +		need_auto_sense = 1;
> +	}
> +
>  	/*
>  	 * If we have a failure, we're going to do a REQUEST_SENSE 
>  	 * automatically.  Note that we differentiate between a command
> Index: usb-devel/drivers/usb/storage/unusual_devs.h
> ===================================================================
> --- usb-devel.orig/drivers/usb/storage/unusual_devs.h
> +++ usb-devel/drivers/usb/storage/unusual_devs.h
> @@ -2212,6 +2212,18 @@ UNUSUAL_DEV( 0x1908, 0x3335, 0x0200, 0x0
>  		US_FL_NO_READ_DISC_INFO ),
>  
>  /*
> + * Reported by Matthias Schwarzott <zzam@gentoo.org>
> + * The Amazon Kindle treats SYNCHRONIZE CACHE as an indication that
> + * the host may be finished with it, and automatically ejects its
> + * emulated media unless it receives another command within one second.
> + */
> +UNUSUAL_DEV( 0x1949, 0x0004, 0x0000, 0x9999,
> +		"Amazon",
> +		"Kindle",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_SENSE_AFTER_SYNC ),
> +
> +/*
>   * Reported by Oliver Neukum <oneukum@suse.com>
>   * This device morphes spontaneously into another device if the access
>   * pattern of Windows isn't followed. Thus writable media would be dirty
> Index: usb-devel/include/linux/usb_usual.h
> ===================================================================
> --- usb-devel.orig/include/linux/usb_usual.h
> +++ usb-devel/include/linux/usb_usual.h
> @@ -86,6 +86,8 @@
>  		/* lies about caching, so always sync */	\
>  	US_FLAG(NO_SAME, 0x40000000)				\
>  		/* Cannot handle WRITE_SAME */			\
> +	US_FLAG(SENSE_AFTER_SYNC, 0x80000000)			\
> +		/* Do REQUEST_SENSE after SYNCHRONIZE_CACHE */	\
>  
>  #define US_FLAG(name, value)	US_FL_##name = value ,
>  enum { US_DO_ALL_FLAGS };
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7ca46439-6b7c-ecf1-3e4f-a3a7da868a64%40redhat.com.
