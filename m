Return-Path: <usb-storage+bncBC72VNFM2YHRBLUX7TDQMGQE5GAPB4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC11C0BE58
	for <lists+usb-storage@lfdr.de>; Mon, 27 Oct 2025 07:05:36 +0100 (CET)
Received: by mail-pl1-x647.google.com with SMTP id d9443c01a7336-294baa12981sf5117325ad.1
        for <lists+usb-storage@lfdr.de>; Sun, 26 Oct 2025 23:05:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1761545135; cv=pass;
        d=google.com; s=arc-20240605;
        b=GmJlct51w8NaZ1AAuOEeqoc+M0yYJBFN+L1jq7OtihRrpZhxFu2zZmMD/zFVhvjjcp
         jOm1xVyIG2cNqmNQ7TFEATfSfFgzYsrirIwoEJs32duGujlkKbUGV7HKoizdziKWxtGE
         o92S8my2FkuXys9FJV+dYfAOz6re1MdOPtqDbucIjs7U+8c2GQ03cXRnwDT4M9NM29CW
         29HyiTIsTWw/2pc+EC6/cSnWqc0D8YV7nh54m8WYamswe6E8MiO9v9hhHKVMTyO6FUz0
         qCx18tEKAJ57qFtreaDBI/qorDf2b4g99nOePNHMLR2dkKrnzq3Hb7LVGxab2nKdjNqw
         AirQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=rkEFIlzHkfWEtIrQwAwJ0XWU5TrBbtR+P8VePxLby8o=;
        fh=EIVgoyJWTdgCBGuSPlYR8jhtfk5LSVgIntiKHDnUL28=;
        b=JXBev0BURKBP8QGNa1dkedsJaWFqzQSjvx7DF10g7htoQLinMImN/Kf0U/h3XdSv7z
         1iuJcHQxmxsZvUXLdRRsqgD/pGR9vqiuPNCQzUdXC6zLYwy5qhwRJ5+sA6yhK4vStzy0
         fz6KEOg/lh+XBj26mBfT0+lW4y2g1TCS/PwLgV6LeIpwIhpIJyW/GzmuuQMlxx/3Fr6B
         aZ4JxGVHP+rymZLmMeiWu8cxaaNQrxFOqvV+liB+td/mjiFnsgz5OBEWv3xAv+abpf8m
         UU2RmGbiH2cYyg2GveVBjsCDOSGHgTrXDwLy1TrnilyZoszfzoVL6nfBseUWnYbaX+yd
         CU7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1761545135; x=1762149935; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rkEFIlzHkfWEtIrQwAwJ0XWU5TrBbtR+P8VePxLby8o=;
        b=ZVHMD1KCeRGyjahAKVU1DDbiTLZkR8pl5/C7SFRVr1hSC3JYot9eNNKyG/OAUqcUPo
         ufZFlTno7s2Y3y5HnMmDBUC5QqOhfRAEogU3a/EKXqokF7r0+fBr03DbCLx5jGdeClHF
         WRjkvGXllfnLMlL49xjp9aDd0qKd/aWR2Hqbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761545135; x=1762149935;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rkEFIlzHkfWEtIrQwAwJ0XWU5TrBbtR+P8VePxLby8o=;
        b=g8YEtinq2211nLDkyulPdPmk/XtMDOhX07mP6bXunklveYfBQoD982xth6KIICR/Qd
         ggHxeNLnJnHat6CeI1vv+hMzhE2DZsbNwZuT7XusnM1fNCdzf1chDh1Y4URSmJQYjpwx
         mkgRfUnLRC0VDsp8zQ1k+h2D29yU8IrYMePWLZaVxriRo6g0Vn3PAFO1YV6lqycFeGIB
         5GepjBdEwc6cdvLBXSLC/dYflDRHZxG7pVXr6tjX1QSRTZUuvr8du3ARp6TJDOErDDNN
         RxzQQMxXYa1Bljr1+K3mUpZvX6hR4Jr4xqs0OpEzdkuM1T4YxI5xvJjI3rmbw//nVjuT
         Koxg==
X-Forwarded-Encrypted: i=2; AJvYcCUUK7tQ+BiZsfcXr/5PqVYwzWsYJb/bJraEAZPNnt55qDIstFuhmdtMOa/eSUdUF7zrmsPypw==@lfdr.de
X-Gm-Message-State: AOJu0Yw7SplVVYzatUUYcnGYarkeL6Mpwivbv8aaIsgoIgyBd79BRtXa
	3cUOKc/02loRLFWQnfHZCgisHmD3hiPNffID41pT9SNlk4S/FUk0K7uw62L5Ae/muio=
X-Google-Smtp-Source: AGHT+IHtxkvvcE+IBju46iwgEmkeZY7uGIcEFMbr4MGXxfIwlbcGYkdcYND8xzIni5fjFGEXrCofog==
X-Received: by 2002:a17:902:f712:b0:294:880e:7ab6 with SMTP id d9443c01a7336-29489db6cfemr111769495ad.1.1761545134904;
        Sun, 26 Oct 2025 23:05:34 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+bx7Asd30B0rVF5yeNZ2AWZEOz9eHdOcwbztBIt6PiIRA=="
Received: by 2002:a17:903:9cc:b0:264:a0dd:421e with SMTP id
 d9443c01a7336-293000cfebfls33547485ad.1.-pod-prod-00-us-canary; Sun, 26 Oct
 2025 23:05:33 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWaLA1u0j7NUIai7tkuYa4TseNKNmxLbqN/pLfiHaJjGkrdYgl46Kdtlk4xgR7PwUwOaKD4Q7HBgCWd9Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:902:cec3:b0:27d:6995:990d with SMTP id d9443c01a7336-29489e137a1mr121046075ad.19.1761545133401;
        Sun, 26 Oct 2025 23:05:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1761545133; cv=none;
        d=google.com; s=arc-20240605;
        b=YfLouTTThBo0vZkiGFhyhOiQgyagIYA4FkmVkz2cn+WXW8JRJDqRxoX2qa6Lxonupo
         tZypf0w66TcTTdLva8HA0JjodtojGTt8/wCHVu5U6jYzD0QW23Es5KVud+150PzVHWrn
         LudRCVwZMeH5VQnAM+bkEuVtXQucXuf+Y2EwemxIRPQMZS2kasLmGNBcsX3e2z/FZ1fI
         VyzVRjMkT7MIBb/PFkeY6NCI4c90NHcgXbu9GOv+/TXTNkSfw657jJrUcAEXB/SeGD00
         3xY8nV6xMTZ4iG+Pz0znYWoTYG+fT4qtLRKQi2cxG3PwEDweuF8Vj1FoYwuEf4rV0mLI
         VOAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=wxtAXCa4q+b7xt+OKXs035jyK2LUh8xNBHEF7JYqiP4=;
        fh=mh64s1FgOLwaHrWA+M95pV5tUKi0LLRMtlM4C8s364g=;
        b=jZRRDcQ2IU82l9mcZkle6hAaI7hc/75kEt02uZfHuq3b+6Sxr2iy424xoSCXepE2es
         YcmPZftBbnIrc4P51fBPIaOzAghj8v/GIf2ikbKuyAOxLANhB5c5k3wMfO3cqZnQGujv
         kl+krp2xYm4C2VYfA0CIE4yg4UZtqIkhGhZ8shYuvQYSCggFowOlbumdcZ2fpMgX7VHv
         kt86UdlqIB9cfFrqJfInKgo+mBMwOysHjeoOBLybcaP6R9lhvgWLI38KcnN3tw0fRDcM
         QH3KJ3mvU6PM0GWt6zZi/xtO7o6YcMJ4jvdayz/cyoPplmI/4P9EFHw3QUo3s7/qmPga
         c2LQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) smtp.mailfrom=guhuinan@xiaomi.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=xiaomi.com
Received: from outboundhk.mxmail.xiaomi.com (outboundhk.mxmail.xiaomi.com. [207.226.244.123])
        by mx.google.com with ESMTP id d9443c01a7336-2949aaf69b7si32558045ad.479.2025.10.26.23.05.31
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 26 Oct 2025 23:05:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender) client-ip=207.226.244.123;
X-CSE-ConnectionGUID: M6xXRqE0SZytrjgFWeQ8Cg==
X-CSE-MsgGUID: T31zFUQdQRWrkdf8CWmpgQ==
X-IronPort-AV: E=Sophos;i="6.19,258,1754928000"; 
   d="scan'208";a="156458751"
Date: Mon, 27 Oct 2025 14:05:11 +0800
From: "'Owen Gu' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Oliver Neukum <oneukum@suse.com>, Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: <linux-usb@vger.kernel.org>, <linux-scsi@vger.kernel.org>,
	<usb-storage@lists.one-eyed-alien.net>, <linux-kernel@vger.kernel.org>, "Yu
 Chen" <chenyu45@xiaomi.com>, Michal Pecio <michal.pecio@gmail.com>
Subject: [usb-storage] Re: [PATCH v2] usb: uas: fix urb unmapping issue when
 the uas device is remove during ongoing data transfer
Message-ID: <aP8Llz04UH8Sbq5Q@oa-guhuinan-2.localdomain>
References: <20251015153157.11870-1-guhuinan@xiaomi.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20251015153157.11870-1-guhuinan@xiaomi.com>
X-Originating-IP: [10.237.8.164]
X-ClientProxiedBy: BJ-MBX04.mioffice.cn (10.237.8.124) To BJ-MBX05.mioffice.cn
 (10.237.8.125)
X-Original-Sender: guhuinan@xiaomi.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of guhuinan@xiaomi.com designates 207.226.244.123 as permitted sender)
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

Hi Oliver,

I'm following up on my previous patch v2. Could you please provide feedback on it?
If there's anything I can improve, let me know.

Thanks,
Owen Gu

On Wed, Oct 15, 2025 at 11:31:57PM +0800, guhuinan wrote:
> From: Owen Gu <guhuinan@xiaomi.com>
> 
> When a UAS device is unplugged during data transfer, there is
> a probability of a system panic occurring. The root cause is
> an access to an invalid memory address during URB callback handling.
> Specifically, this happens when the dma_direct_unmap_sg() function
> is called within the usb_hcd_unmap_urb_for_dma() interface, but the
> sg->dma_address field is 0 and the sg data structure has already been
> freed.
> 
> The SCSI driver sends transfer commands by invoking uas_queuecommand_lck()
> in uas.c, using the uas_submit_urbs() function to submit requests to USB.
> Within the uas_submit_urbs() implementation, three URBs (sense_urb,
> data_urb, and cmd_urb) are sequentially submitted. Device removal may
> occur at any point during uas_submit_urbs execution, which may result
> in URB submission failure. However, some URBs might have been successfully
> submitted before the failure, and uas_submit_urbs will return the -ENODEV
> error code in this case. The current error handling directly calls
> scsi_done(). In the SCSI driver, this eventually triggers scsi_complete()
> to invoke scsi_end_request() for releasing the sgtable. The successfully
> submitted URBs, when being unlinked to giveback, call
> usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
> unmapping operations since the sg data structure has already been freed.
> 
> This patch modifies the error condition check in the uas_submit_urbs()
> function. When a UAS device is removed but one or more URBs have already
> been successfully submitted to USB, it avoids immediately invoking
> scsi_done() and save the cmnd to devinfo->cmnd array. If the successfully
> submitted URBs is completed before devinfo->resetting being set, then
> the scsi_done() function will be called within uas_try_complete() after
> all pending URB operations are finalized. Otherwise, the scsi_done()
> function will be called within uas_zap_pending(), which is executed after
> usb_kill_anchored_urbs(). The uas_zap_pending() iterates over
> devinfo->cmnd array, invoking uas_try_complete() for each command to
> finalize their handling.
> 
> Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
> Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
> ---
> v2: Upon uas_submit_urbs() returning -ENODEV despite successful URB
> submission, the cmnd is added to the devinfo->cmnd array before
> exiting uas_queuecommand_lck().
> v1: https://lore.kernel.org/linux-usb/20250930045309.21588-1-guhuinan@xiaomi.com/
> ---
> ---
>  drivers/usb/storage/uas.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 4ed0dc19afe0..45b01df364f7 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -698,6 +698,10 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
>  	 * of queueing, no matter how fatal the error
>  	 */
>  	if (err == -ENODEV) {
> +		if (cmdinfo->state & (COMMAND_INFLIGHT | DATA_IN_URB_INFLIGHT |
> +				DATA_OUT_URB_INFLIGHT))
> +			goto out;
> +
>  		set_host_byte(cmnd, DID_NO_CONNECT);
>  		scsi_done(cmnd);
>  		goto zombie;
> @@ -711,6 +715,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
>  		uas_add_work(cmnd);
>  	}
>  
> +out:
>  	devinfo->cmnd[idx] = cmnd;
>  zombie:
>  	spin_unlock_irqrestore(&devinfo->lock, flags);
> -- 
> 2.43.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/aP8Llz04UH8Sbq5Q%40oa-guhuinan-2.localdomain.
