Return-Path: <usb-storage+bncBDZYPUPHYEJBBFVYVX6AKGQEP6LCHUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD7D291491
	for <lists+usb-storage@lfdr.de>; Sat, 17 Oct 2020 23:03:20 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id c4sf3723966qtx.20
        for <lists+usb-storage@lfdr.de>; Sat, 17 Oct 2020 14:03:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602968599; cv=pass;
        d=google.com; s=arc-20160816;
        b=YODSMQUiTb1WTzTZ1OTHB4rZJlSJ/eYiYB+LJvQaTy1yIzyiIYwjxjsFrHi0lBzCI7
         dPQjXq+xtA3haqh4C9rNZpxMjoD0IqQd9UJmOYtOyqbKL+HRgkUdTLKUd9BlECCVU6rp
         Ew7JU9xfRMXTlG2mbXLiw7D2OG5D90ixwPoSO2UloUegEUyIMymiShZq2BYHV3FSXa+O
         D5qUnvo/93sk6xrJUoYKOyM1h6s53hAtYjgCHcPigD/EMR8Htf9RF1tOieosyPj6C8Vh
         xG/i80HWgNTFx3UQZVfYcqljy86WICJqL5QywtnkYiO8/dS/11rdSvEN3UiWMdtjH2L6
         cEQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=VU/6AeCSCWDe0GT7qTS6uEf6zalN/dfvrRg8AEijXcI=;
        b=RwRjzcvJtgcRd60aTM7bC/8PNfFXFrXvaZavJDMrYWLEAW1fBGjTtUFaPiiANZvxoG
         rL0Ly6anj/3YaIn3M75RQb0pjjSE14D8qNU0jXzS+wyYjaFxmaapUXYI1zUD3ghOECYy
         rFoYo2v6M0qIKw2+HB7MPAEyhP1KTle2m9xxMvHsnSPPn10ZD2gLJxgFChT1hJaQSwA9
         1+m5aNWG7nILhTe0Mgeax2ksOBuuq4ZVE8ZnBBVl/z9Xj1CRwd2eHRlVKa9c86zW94/I
         EC93XMY+MSv3qulkbH8utenEz4UoaqaYpJmqSPvfUx47DkKcMonvMOw7ShwhRxr1XWD+
         ZZ+Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=ntIAxdfj;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VU/6AeCSCWDe0GT7qTS6uEf6zalN/dfvrRg8AEijXcI=;
        b=e3gzOBZX1SnXQMM+VTSVF4BRKKwgu1R4zghlDH61jteDxNFKN2Tpe+ls7QVJkqyxEv
         Ai7wej5LnrJV4deI47VkxGvAS7UMHHvsCiwFVTm3J4CadfPwgXaoKdfnlBH6lAi0vKx0
         SQZStmtqyUII3qbXzDkbUfYUVXk/PPFu7xLfc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VU/6AeCSCWDe0GT7qTS6uEf6zalN/dfvrRg8AEijXcI=;
        b=H+7DWznX6UUqc31XddCNPBdu/SmwF0cGqxnNX6UPJqHlnfdMxV0c9qqZh8OO+YqX6G
         yGJB4/bzuZZbEP2X8HMeQ65laJBWN2MIBhso06tumLTPysLhk+qgIeH8CBKmtRHos09b
         oj4PezzjTv57mfOkEpZBWDlXB86tEhI1s+7FrcxoqOUoSmRQY4vvtAc5rgs34I9CbKPQ
         zA/aWrPFQ4NhY4XGzIBxzwImFVESFjCOlAIUGr57fDVetGvm77YIL0jHmFUPsVSM7Nnu
         Ae3b1aJDDfzqtUxU1Vb8glY/qMKVovKfd98jwHfTKmXmbxqI8DCGs90SAc2DMItSB5H4
         a4cA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531vdSz3KrbvleAyi4nPqNFAYrc4uQIhNj+dGLKNNA9YOK8QKPM3
	+UvXoHd6xWELU5MkY/VJt7DpVw==
X-Google-Smtp-Source: ABdhPJxKWZJLx4FkB9n/0VwYA2HwzfUU/KCPHqZYo6+do7A47FxssL6p0qaKzXgakNtx+Z+H+UWMww==
X-Received: by 2002:ad4:5747:: with SMTP id q7mr10031788qvx.0.1602968599124;
        Sat, 17 Oct 2020 14:03:19 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7347:: with SMTP id q7ls2224134qtp.8.gmail; Sat, 17 Oct
 2020 14:03:18 -0700 (PDT)
X-Received: by 2002:ac8:1935:: with SMTP id t50mr8823816qtj.74.1602968598632;
        Sat, 17 Oct 2020 14:03:18 -0700 (PDT)
Received: by 2002:a37:5043:0:b029:102:b6b:b400 with SMTP id e64-20020a3750430000b02901020b6bb400msqkb;
        Sat, 17 Oct 2020 14:01:33 -0700 (PDT)
X-Received: by 2002:a17:906:7d7:: with SMTP id m23mr10424478ejc.47.1602968492400;
        Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602968492; cv=none;
        d=google.com; s=arc-20160816;
        b=fhbevH3V4hz6gBN83kL8ysvGfbocdKPWl5wgonmnJPJO/geT3HmgyxMxU6rBNvMVqZ
         cvpS55WhZyJZ95/g1TByU8BbdP9qt2vEmIqNEWLao7eKeE+Z63EVjAnWsYGH11aaWBK2
         ZoSDgEkPsy4NdM4Mpw26qSstWLJ1fb/4RWq/twcZ7Ju3nk33IwCDnUdtgWNoOy318O9U
         fsYq3WJR1e/8XCRy/VQVL0NF4BvNcyS/w/1+b4C6MKsvlmDzMw+h0CbhaLPuxWV0wcrO
         67mF4iXeB91t8X2haUcl7jNsh5dSoD/xagN7yRK7ZuT8HCtqez7Gd8Yu9TCbSQ+Ow6Ax
         cLIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QU5tUnKrk3cCgEOM6DUuSpHohPcIoidzngrqxPrVqlg=;
        b=L8q57o3ro9FnyXcVmKXtUzYjXp3mTtjI5dzZ+m9jAJDWOk5bjHy2U59ZDgepADgbow
         hmGZw08r7Tj/C5ni2zWe4f7889RAO4CPMghxR2GV+4YpLHJZBJ7AIxva1J0+TOhKtqOA
         4kzft2IexnZ0nnDB7kU/UUhhuHaPd8f2YepjRkecDWFT21TclVI76xfYwbsjkTxmjLrZ
         bOR08uOwxoczXH+ra6+OAMPasBzWh8+ZxnCGZBDonxHgxExRgEGdKIQK/JhCUqpgcBgE
         tKDoHieXVFjOVaRDPsrkH/TVXHwONNrXdzyqLNO3Fq8UQyLAhtgAgcxyLPau5ow1I4Yv
         ltxw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=ntIAxdfj;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id p9sor3406786ejx.35.2020.10.17.14.01.32
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:906:1a19:: with SMTP id i25mr9957370ejf.323.1602968492144;
 Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com>
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 17 Oct 2020 14:01:22 -0700
Message-ID: <CAPcyv4jkSFxMXgMABX7sDbwmq8zJO=rLX2ww3Y9Tc0VAANY8xQ@mail.gmail.com>
Subject: [usb-storage] Re: [RFC] treewide: cleanup unreachable breaks
To: trix@redhat.com
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-edac@vger.kernel.org, 
	Linux ACPI <linux-acpi@vger.kernel.org>, 
	Linux-pm mailing list <linux-pm@vger.kernel.org>, xen-devel <xen-devel@lists.xenproject.org>, 
	linux-block@vger.kernel.org, openipmi-developer@lists.sourceforge.net, 
	linux-crypto <linux-crypto@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-power@fi.rohmeurope.com, 
	linux-gpio@vger.kernel.org, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux-foundation.org, spice-devel@lists.freedesktop.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, 
	"Linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, MPT-FusionLinux.pdl@broadcom.com, 
	linux-scsi <linux-scsi@vger.kernel.org>, linux-mtd@lists.infradead.org, 
	linux-can@vger.kernel.org, Netdev <netdev@vger.kernel.org>, 
	intel-wired-lan@lists.osuosl.org, ath10k@lists.infradead.org, 
	Linux Wireless List <linux-wireless@vger.kernel.org>, linux-stm32@st-md-mailman.stormreply.com, 
	linux-nfc@lists.01.org, linux-nvdimm <linux-nvdimm@lists.01.org>, 
	Linux PCI <linux-pci@vger.kernel.org>, 
	linux-samsung-soc <linux-samsung-soc@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	patches@opensource.cirrus.com, storagedev@microchip.com, 
	devel@driverdev.osuosl.org, linux-serial@vger.kernel.org, 
	USB list <linux-usb@vger.kernel.org>, usb-storage@lists.one-eyed-alien.net, 
	linux-watchdog@vger.kernel.org, ocfs2-devel@oss.oracle.com, 
	bpf@vger.kernel.org, linux-integrity@vger.kernel.org, 
	linux-security-module@vger.kernel.org, 
	"open list:KEYS-TRUSTED" <keyrings@vger.kernel.org>, alsa-devel@alsa-project.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=ntIAxdfj;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 209.85.220.65 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Sat, Oct 17, 2020 at 9:10 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.
>
> clang has a number of useful, new warnings see
> https://clang.llvm.org/docs/DiagnosticsReference.html
>
> This change cleans up -Wunreachable-code-break
> https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
>
> The method of fixing was to look for warnings where the preceding statement
> was a simple statement and by inspection made the subsequent break unneeded.
> In order of frequency these look like
>
> return and break
>
>         switch (c->x86_vendor) {
>         case X86_VENDOR_INTEL:
>                 intel_p5_mcheck_init(c);
>                 return 1;
> -               break;
>
> goto and break
>
>         default:
>                 operation = 0; /* make gcc happy */
>                 goto fail_response;
> -               break;
>
> break and break
>                 case COLOR_SPACE_SRGB:
>                         /* by pass */
>                         REG_SET(OUTPUT_CSC_CONTROL, 0,
>                                 OUTPUT_CSC_GRPH_MODE, 0);
>                         break;
> -                       break;
>
> The exception to the simple statement, is a switch case with a block
> and the end of block is a return
>
>                         struct obj_buffer *buff = r->ptr;
>                         return scnprintf(str, PRIV_STR_SIZE,
>                                         "size=%u\naddr=0x%X\n", buff->size,
>                                         buff->addr);
>                 }
> -               break;
>
> Not considered obvious and excluded, breaks after
> multi level switches
> complicated if-else if-else blocks
> panic() or similar calls
>
> And there is an odd addition of a 'fallthrough' in drivers/tty/nozomi.c
[..]
> diff --git a/drivers/nvdimm/claim.c b/drivers/nvdimm/claim.c
> index 5a7c80053c62..2f250874b1a4 100644
> --- a/drivers/nvdimm/claim.c
> +++ b/drivers/nvdimm/claim.c
> @@ -200,11 +200,10 @@ ssize_t nd_namespace_store(struct device *dev,
>                 }
>                 break;
>         default:
>                 len = -EBUSY;
>                 goto out_attach;
> -               break;
>         }

Acked-by: Dan Williams <dan.j.williams@intel.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAPcyv4jkSFxMXgMABX7sDbwmq8zJO%3DrLX2ww3Y9Tc0VAANY8xQ%40mail.gmail.com.
