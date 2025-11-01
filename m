Return-Path: <usb-storage+bncBC72VNFM2YHRBWNCTDEAMGQEZA5B2BQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pj1-x1047.google.com (mail-pj1-x1047.google.com [IPv6:2607:f8b0:4864:20::1047])
	by mail.lfdr.de (Postfix) with ESMTPS id D23ACC28062
	for <lists+usb-storage@lfdr.de>; Sat, 01 Nov 2025 14:55:39 +0100 (CET)
Received: by mail-pj1-x1047.google.com with SMTP id 98e67ed59e1d1-340ec9b90fasf11885a91.3
        for <lists+usb-storage@lfdr.de>; Sat, 01 Nov 2025 06:55:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1762005338; cv=pass;
        d=google.com; s=arc-20240605;
        b=X4lkM8vzT1BvJ/CIOu5OuTH0VWbMxD9yeBmDR4LNzzODF8t2h8Y2Pkl6M/1Inemdt/
         hhf21jh6/jYAH6QYbRg62Fcckc+EWBGACKcjV0NZTuQGVaCL38XQ11aq0OX8O0OQOriF
         b3batzWbW3aBvJjZQ2/wEQoA6pn7SB+aLQTvRVzOvzlEK4v9m7CMCzpG9QEsMR4FZzAL
         cBT2eNVuXK7h8vGplNactk0//Qa486TjUSUKvs6AKL5vatKusSWEo7PAK+8dPedJqCCc
         6Xsvib2xfCUBRXiPoHXlv4OufpdUWgTg3OnQf4WWnAvZS3vU5eg54+WwLig0C6NEtCvm
         l6TQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=R0Eq29NriSR4DPbJZIq9HBVZaFzlGKuDYmxwSH1ASUg=;
        fh=n+pQkdI8WMZgMF/lhovr2uiXlok9wqOBt7whciW0Jsg=;
        b=W5sysfzyEyDcz9Yzrwbsu+eKUtSwqC5x88fmyiv1V6Nu7tUF6InWns3WEJGY88t6Oz
         yida3UWhXF2okn+B8AruBB0ETmTYt5N8yq59v89cvdrVwiDUum8Zdisc5p9eKgvONY1s
         lhZ/ozrbAJLrQtPS2Mbc+QBmtqUAZ/S8TtlgPg/oqvTlaOG6+46EfbMFW1v5UMSnFSaq
         ceH5RiG6vXyj/jPw1DuVqQUDC+DGL3tuxsv1NSRKrtvgDxjw7GMrrgc8niDz0W8dLAdS
         z2lUE4rDB/klst/hUnTNH/oaRpmKd+Dl+j5Kjph0syNWzpZGEtBhwxTtRfE6iic3d0SM
         rrbQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762005338; x=1762610138; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=R0Eq29NriSR4DPbJZIq9HBVZaFzlGKuDYmxwSH1ASUg=;
        b=KnFcR19uKL9XjcS5nu/m6tMmsicLuwcXE9Cgszgrn+S5w0JCZ82ZsbH3KoPVFI9xI/
         QXxGjL9iTAIuTZbRDAx/uiPF3ol/3m8X9s+u6gkosmOvA5MU0UblG6BIZIrtb71yeDyI
         0KKCRJCDPbkHoZccc66Qee7rm2IzZ16hw5gUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762005338; x=1762610138;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0Eq29NriSR4DPbJZIq9HBVZaFzlGKuDYmxwSH1ASUg=;
        b=E8bJ3nevz5H7pVZxPLhBhDaZ4jAE0sw0q2ncQR3Au5zMPPhm5kH6NDk6eFNlhzwOvn
         TmI4vOakWlS/uFFh5pAfmicTDZGlKC3JqIcB5IYaCBRjCUJlDXm8FSjP5Kz2F1rFHElH
         wzB/RLkBAWHQPKitHhz+kZ1/5QAeEW+zKoZYbIboMHSx0HThJoeKdP0KjzpNL7dSiX36
         hzNgUGHaV0h95fRq+uj+KDwemT+Tp+5bZiRbXkFMq4JiSwK7VBVlL2ZWUV3F43ieq3r0
         H5mR+JKCqOP4iRqXnagl/N/C3+oTd0okJW8FFsvD1Q08xT39+9EF5vr9+afazyLzPuVD
         +k1A==
X-Forwarded-Encrypted: i=2; AJvYcCXBYgX183L7350w5i5wmM4GUMgVnzLf1PdUjNl5ovzvcXHgNecoIrVrsJrJsjkX44Uggg9e4w==@lfdr.de
X-Gm-Message-State: AOJu0YzUqKY9BGTOyIzjMndFUJmsxpGlcFSSFpf8E6cTORkK9ACyzcE7
	9sSKLMn5j1oVyMtSQ48COZ6q9aoJ/qX78dXBdyAFpzOsHMnY5JfHdbuGc+ovGCvoCjI=
X-Google-Smtp-Source: AGHT+IH9FpeUm0XVvMNtVy8r+XWJW8AdsRheFKADt8KiDxz0Gbq8S1PknHootejh1bUCwroX+hlszQ==
X-Received: by 2002:a17:90b:33cb:b0:33d:55b1:e336 with SMTP id 98e67ed59e1d1-34083088884mr4790381a91.6.1762005337885;
        Sat, 01 Nov 2025 06:55:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+YLsK7ASU4tDmp3LFcUVget3eydpYdBwwmLgE9Mql8S/A=="
Received: by 2002:a17:90a:db93:b0:340:5090:ca5a with SMTP id
 98e67ed59e1d1-3405090ce3cls2910329a91.1.-pod-prod-02-us; Sat, 01 Nov 2025
 06:55:36 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW8+X+Qd260cyWUcTeXytt0nhkP4IkRZraVJD/knJYF5DphZZaVfBN6IyZP0r3AH6ZFMKS7UrW9zMebQg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6a20:7348:b0:341:4dc7:6ac7 with SMTP id adf61e73a8af0-348caf8cab4mr10348204637.17.1762005336431;
        Sat, 01 Nov 2025 06:55:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1762005336; cv=none;
        d=google.com; s=arc-20240605;
        b=dUM3gJJb6zQi3kg9s1Rlnt3WkErsMiuVd7PHbxsigJPUEG9AEtVVG3Fp6/u2AAKh0F
         1cyULSS+NP8Ogqkg5Qfpcl/I3xHqgrRKuuuzOVdgFkFzKm9N4l52nFXwX8F2ewWo5ONr
         GaXTK+UnKNo28Zlj1ADLr4KrxzQi3EG1BlTqkn5eR6wxOgnUxLVXFOF61ARTlN+TA0G2
         QW5bQ4+hnTdJJU71/MKFuFpueXUriQvvVrktIoicGgjZJKiyg7uxapHqeC/Px3sgVq0F
         WC6iVMad2t33v883YNlcSQQqtShK+6WZoEMfEXZ0Ggr8iVFYRf37j9WL/tGLuxBTVQYN
         LdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=FkQF1/VQCDXlJNn/s8hIV/d2p7ooXNnFN5WUqStRppg=;
        fh=UhAFzX2FD5CLpTlQQ249jxzN+hl8q3cWao/vRTIVsZ8=;
        b=YnDWRwlX4BUJNI7klzVuDxPnb9m/NDgZ5KlPxOoDfZrx6v9XaRAR542KaEYsSr/FsQ
         RMjAvrFVcOGUPXXUBZG3SkaidJ/wRNlZmKNteQCYyAbWQjk2aJv0E5tfG1rWzs4Ah4n6
         s0c2VbG80uVzGh3kembADq39s2wbuLXpnRI5CCObaCxpLwkBwzidB8qZxdPeeUW/j+Lh
         5Vj4/1+oyuDop5fxa5mMEXXFGngWsxzY6Vd2iPAiUTgMU9Ewl/FB81KNtr69hYy+wazG
         +p/4eRiUEsMEryseiE3FQ2rLI5cpuVfyITww+YJhrf8EZ3+/c+mzdB4RcMdAFP2/Lmxg
         U5rw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [118.143.206.90])
        by mx.google.com with ESMTP id 41be03b00d2f7-b93be5ee9d1si2440638a12.344.2025.11.01.06.55.35
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 01 Nov 2025 06:55:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender) client-ip=118.143.206.90;
X-CSE-ConnectionGUID: wpOrwVv0TfGh+FJzZcbPPQ==
X-CSE-MsgGUID: SFIU6wynT+iEPt/G+F7yQw==
X-IronPort-AV: E=Sophos;i="6.19,272,1754928000"; 
   d="scan'208";a="131247206"
Date: Sat, 1 Nov 2025 21:55:22 +0800
From: "'Owen Gu' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Oliver Neukum <oneukum@suse.com>
CC: Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, <linux-usb@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <usb-storage@lists.one-eyed-alien.net>,
	<linux-kernel@vger.kernel.org>, Yu Chen <chenyu45@xiaomi.com>, Michal Pecio
	<michal.pecio@gmail.com>
Subject: [usb-storage] Re: [PATCH v2] usb: uas: fix urb unmapping issue when
 the uas device is remove during ongoing data transfer
Message-ID: <aQYRIgg2lyFhd7Lf@oa-guhuinan-2.localdomain>
References: <20251015153157.11870-1-guhuinan@xiaomi.com>
 <aP8Llz04UH8Sbq5Q@oa-guhuinan-2.localdomain>
 <8de18ee2-ccdd-4cdd-ae49-48600ad30ed4@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8de18ee2-ccdd-4cdd-ae49-48600ad30ed4@suse.com>
X-Originating-IP: [10.237.8.164]
X-ClientProxiedBy: BJ-MBX07.mioffice.cn (10.237.8.127) To BJ-MBX05.mioffice.cn
 (10.237.8.125)
X-Original-Sender: guhuinan@xiaomi.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guhuinan@xiaomi.com designates 118.143.206.90 as permitted sender)
 smtp.mailfrom=guhuinan@xiaomi.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=xiaomi.com
X-Original-From: Owen Gu <guhuinan@xiaomi.com>
Reply-To: Owen Gu <guhuinan@xiaomi.com>
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

On Mon, Oct 27, 2025 at 02:35:37PM +0100, Oliver Neukum wrote:
> Hi,
> 
> I think I was unclear the first time.
> Sorry for that.
> 
> On 27.10.25 07:05, Owen Gu wrote:
> > Hi Oliver,
> > 
> 
> > > This patch modifies the error condition check in the uas_submit_urbs()
> > > function. When a UAS device is removed but one or more URBs have already
> > > been successfully submitted to USB, it avoids immediately invoking
> > > scsi_done() and save the cmnd to devinfo->cmnd array. If the successfully
> > > submitted URBs is completed before devinfo->resetting being set, then
> > > the scsi_done() function will be called within uas_try_complete() after
> 
> This requires that uas_try_complete() is called.
> 
> And I am afraid uas_stat_cmplt() cannot guarantee that in the error case.
> I think the following sequence of events is possible:
> 
> CPU A						CPU B
> 
> uas_queuecommand_lck() calls uas_submit_urbs()
> COMMAND_INFLIGHT is set and URB submitted
> 						URB gets an error
> 						status = -EBABBLE (just an example)
> 						uas_stat_cmplt is called
> 						resetting is not set
> 						if (status)
> 							goto out;
> 
> 						uas_try_complete _not_ called
> 
> The scsi command runs for indeterminate amount of time.
> It seems to me that if you want to use your approach you also
> need to change error handling in uas_stat_cmplt()
> 
> 	Regards
> 		Oliver
> 
>
Hi Oliver,
I think the error handling only takes effect when uas_queuecommand_lck() calls
uas_submit_urbs() and returns the error value -ENODEV . In this case, the device is
disconnected, and the flow proceeds to uas_disconnect(), where uas_zap_pending() is
invoked to call uas_try_complete().

Regards
Owen

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aQYRIgg2lyFhd7Lf%40oa-guhuinan-2.localdomain.
