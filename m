Return-Path: <usb-storage+bncBCTPRFE7TUKRBR6OY7EAMGQEE2AYYTI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ej1-x646.google.com (mail-ej1-x646.google.com [IPv6:2a00:1450:4864:20::646])
	by mail.lfdr.de (Postfix) with ESMTPS id CC146C46DB6
	for <lists+usb-storage@lfdr.de>; Mon, 10 Nov 2025 14:23:21 +0100 (CET)
Received: by mail-ej1-x646.google.com with SMTP id a640c23a62f3a-b71043a0e4fsf280809966b.2
        for <lists+usb-storage@lfdr.de>; Mon, 10 Nov 2025 05:23:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1762781001; cv=pass;
        d=google.com; s=arc-20240605;
        b=NyzHnNpJNVtuAjaWyWd9cYH80h4mvkr5c2m9y0EkRTxz0LJo1XBQV4Y9OSYl9klsXI
         6o6rqefP+oQs5AvfiU7KgwR1rCSb2hjl0rP8minLvInNpX8c6H7nVilHN0d+6NEJJD3G
         GksYPFPb9qS00vqCdW94/cEWkvlgfd9unkRHRxu8e0Pidf61jONgVcm5rmRL4YyBg8Ih
         YWQlHMjsAD0V6KSKRUnre2Rqhv29Sde1Lchj9DnoEvV/3EVoc0DP+d1T65hHmrufG4NQ
         i5QkmM2rbU/EzV8V5Jj85S55wVq8SCb6FM8Q7zCtviQpf5TkV92JNF09a0PtspFbcSR4
         mK2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=qU0X9T8So6vuMsTazbisymlEvoIxWXucyv/B+xiswtE=;
        fh=tgm6pjyGAAKTHUGjAu1mRveThIOfu4NPgfMaZ4KFfiQ=;
        b=GQtOK4nWdxDmEINgHiyN4zkrXPxtMgKwkwR/QQhFshDxOXJpTuaGy4tKcmQE2oCJaM
         RNDmZSTQhObgf0ZRbDgi4AU1w11DdIetq0NAfddOrxQ9fpPtgU2ENmfNRXiMQ/48uAw/
         +jrnEhqPi98MUFIe/GZMvklPUyf9Wd2kEOViSYXw1PCVEXxC2QMW2KXLft46q8q/w2Fy
         uhYiaG1kfhBHkNhC3SklAoGlpBVaCzXo9v756gpONX4Spt8P8HxBz3ovosw1XBulqWlU
         1PjPdKn7BBuumV8TbG0Gs42IbSADdw5uXNHSGy+Jod/7BNsFgqxLzkyFnURqRXId4JMZ
         Po0w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=C7REJKJO;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1762781001; x=1763385801; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qU0X9T8So6vuMsTazbisymlEvoIxWXucyv/B+xiswtE=;
        b=SRC9wuwb4JIbvMASG5hGpDcodLFSRlire/+0+YoGgI8iuRqE2Z6SyrH1GmrMBNoJC8
         U2jzzn2XCzNk9Xw4kUIqrn5JvPm1SaY/MfetxRhndIz8p6MQJgM2uuiBQSgdqc5Mq8VV
         26o/EUa+d089EQMpn21FIjt+yTQU+kqGZ/La0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762781001; x=1763385801;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qU0X9T8So6vuMsTazbisymlEvoIxWXucyv/B+xiswtE=;
        b=BJBDcf9q4fhKuSCz40J3tQ5WnegcBW4a86P+54scOjusLIX/oU8y+vH3vjdVUDMqMK
         PRnUWcNt1jsdoMLMle+Sztasy8UvDabWf3s4aPvpZ9+krNdf2TLl02Bc6QHe9LRuaw4C
         dOg9LGnTh7cyhxBeqY0ZIyEzN4TEeqB0JKc65iFXsEfpTuFbdRpBnTTSth1YDLGKjSNi
         6O7h8ZRdljcI5AvD19H1e+/y5PVEYY/mRKZr4Pag1R2ALmAHk3YY6x5V/sKBhNy7P8I7
         4qdniB7xJWjRC9Jb2HexFnWs6xLbTCBUkHX7LSvm//R6dGYv1Z2YdtmEsm/LldXFdyxx
         l7Cw==
X-Forwarded-Encrypted: i=2; AJvYcCXfImPLsH7WjQRK0UJ1hQbBSZwU9v1h53LX9JPUNW89Xj4UpSbHagE3etQY6bVuTvzPkxrerg==@lfdr.de
X-Gm-Message-State: AOJu0Yz521nBtv/JHI+vw8+HftaB0NgbYXg3MGiLeIDyUYZyYNysuMV5
	K6juLmkHhJNEsKbHfZEWBNHl6prHTSDHnzaJVE6TzdIkV479rr0kVWo1GbUkohnU1Vc=
X-Google-Smtp-Source: AGHT+IGLuqEaf+Cvj0MT2ba8UUbmgj8HJ1gyQQzdee2ClYZupeeircVW4rqx68DTfDrVtJ/Y8LDiYg==
X-Received: by 2002:a17:907:3f9b:b0:b45:b078:c52d with SMTP id a640c23a62f3a-b72e03ec2c5mr708786866b.35.1762781000908;
        Mon, 10 Nov 2025 05:23:20 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="Ae8XA+Zk+RBcLDUqUxqlJ0uJBjtbKJ+5wl2hsbJydMxV9XLNSQ=="
Received: by 2002:a05:6402:350c:b0:641:8be9:1ff6 with SMTP id
 4fb4d7f45d1cf-6418be92293ls1035609a12.2.-pod-prod-01-eu; Mon, 10 Nov 2025
 05:23:17 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVKcoDmzZIABJgnR3kv3iKVDGlL1s4+o2ZIMGBs8M0w6AmeSYNfcOedFk8Z/d9P/WHSq0P3hKRvh+NmiQ==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6402:3257:20b0:63f:bda9:9f12 with SMTP id 4fb4d7f45d1cf-6415dc1a73amr5158697a12.14.1762780997223;
        Mon, 10 Nov 2025 05:23:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1762780997; cv=none;
        d=google.com; s=arc-20240605;
        b=eVERozpenoVxtNHfoAyEH4+ty+RC4rX50+vMvCQ92GWIE1/PBlPRcK+oa5eZeUaalz
         c+d02QdQT0N7jdXpiw3SsLnHfZS5/Zp19YzpHd9WtdTrEUs57d4PaZlSfe/5nYMojIDo
         empYKQ5RJZ5rx5t1zlhIB9TDYNulPx8gTsm/d1WBi5CG/twFSb+7cQu+NToY2iIQol6r
         6VUZSm3Z40V7lqVP5GdK6xBMoXMxH2eztB5SU22KumxYwW2qCqCtlQ/VWuiEk4bmWgF3
         vBzkCf4QfdgVSGd4iDirUt8Mcft66juy5VT+HSPmeQtjJtmCDF6FpWLbeUJF4178NsOb
         ULjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=eX8cXaP/IKh8VGGvFDRWHiVF+8A64KKj3ky2qGHDfis=;
        fh=pCkoSLOWfcL3SPsvsJ87XIgFhxdBAl5EvyoMDncFxsc=;
        b=IrIYmesBw5AIA0MQl6Rsz7w8djh0Pni5Av2zw3/Q/7lJ6EBBMQBHjAll8hy80jI8Ii
         M8fW20N5122dWgPHP0JDWEBCeUqIPyo1br5CSISzd4qnqwWPFeF55W2K2FkQ8/+TMxf3
         LupvtBijINQvnbP74cmCkk0f5Z7MA0I5BzcJwqaLuPBlYws3NTfV1aQeHrS3Wnf4sDyF
         EKE2w98tdRBazwUkhm/qu5euu/Epe6BXVn8cWpZTqlws56foQ5AH3qogyizUBWCOktIN
         Tk1I1vev5keUGa9gqw0uiHdk1E5wLf6SB45lZtFHAlmQA8tt8zGlM4lx185EZOFanZZ2
         1WVg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=C7REJKJO;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=neutral header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 4fb4d7f45d1cf-64173db2beesor1104746a12.2.2025.11.10.05.23.17
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 10 Nov 2025 05:23:17 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXdEOxQZKM6oyHV+5E7puJpxyvAqRb5L2zR2n1bgQR3n+hzmYOariHM6IVZ3QSa65JNGoL59u9Y47/tDw==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnct66LGi4RkKPRvVzGNvDx4mWz3m7JUsRfIVEQNLVXAY+JvRvohIJrls7TIjkvl
	uF/Iho3ZrgbueFC15gQrvUWhlO1fhCdJuSraMxYuGJp0S9QMwqSIBUYrQfLxMyomJcWdfa3GIAf
	YPkdQh7Mn2etHuqQq6ExbihnGo9m1BDRhhcdXHA9QLYjWlQ847P6F8oBJj0QYvnS/o4NHSW7XtH
	MXlfsQzSdFORorVxsGfhcR1nIz4/xnrKN0kUOKk6S2Tw0bmGGxfutZyXXElz9O4m2yW2LXkc0NX
	7VOBVjBq/EUWz1O3YDfAb6xz0pDoBO2xKMHPFn1oLtQRHKao/sh2Y1aOUHK/IynI1UigtdjDNle
	bFc4/sBv7sr0ucUsDFUHmpute9PYzWY/h3rEM72TVff/zgAGbvQIeTAWTpgBHfAKoiE+STma+mj
	0fjTkWYCuQy2YVQGcriThjHU8umU3UuWfHnUi4s0kcCGs=
X-Received: by 2002:a05:6402:2755:b0:641:8137:e1c8 with SMTP id 4fb4d7f45d1cf-6418137ed28mr4140452a12.34.1762780996736;
        Mon, 10 Nov 2025 05:23:16 -0800 (PST)
Received: from ?IPV6:2001:a61:131d:c701:d281:81d3:7d40:d3c6? ([2001:a61:131d:c701:d281:81d3:7d40:d3c6])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f862697sm11360513a12.25.2025.11.10.05.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 05:23:16 -0800 (PST)
Message-ID: <eb0e0fda-2292-4759-89e7-66e590c4ca83@suse.com>
Date: Mon, 10 Nov 2025 14:23:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v3] usb: uas: fix urb unmapping issue when
 the uas device is remove during ongoing data transfer
To: guhuinan <guhuinan@xiaomi.com>, Oliver Neukum <oneukum@suse.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 Yu Chen <chenyu45@xiaomi.com>, Michal Pecio <michal.pecio@gmail.com>
References: <20251104061608.1336-1-guhuinan@xiaomi.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20251104061608.1336-1-guhuinan@xiaomi.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=C7REJKJO;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=neutral header.i=@lists.one-eyed-alien.net
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
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

On 04.11.25 07:16, guhuinan wrote:
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
> usb_kill_anchored_urbs().
> 
> The error handling only takes effect when uas_queuecommand_lck() calls
> uas_submit_urbs() and returns the error value -ENODEV . In this case,
> the device is disconnected, and the flow proceeds to uas_disconnect(),
> where uas_zap_pending() is invoked to call uas_try_complete().
> 
> Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
> Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
Acked-by: Oliver Neukum <oneukum@suse.com>> ---
> v3: Add some commit message.
> v2: Upon uas_submit_urbs() returning -ENODEV despite successful URB
> submission, the cmnd is added to the devinfo->cmnd array before
> exiting uas_queuecommand_lck().
> https://lore.kernel.org/linux-usb/20251015153157.11870-1-guhuinan@xiaomi.com/
> v1: https://lore.kernel.org/linux-usb/20250930045309.21588-1-guhuinan@xiaomi.com/
> ---
> ---
>   drivers/usb/storage/uas.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 4ed0dc19afe0..45b01df364f7 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -698,6 +698,10 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
>   	 * of queueing, no matter how fatal the error
>   	 */
>   	if (err == -ENODEV) {
> +		if (cmdinfo->state & (COMMAND_INFLIGHT | DATA_IN_URB_INFLIGHT |
> +				DATA_OUT_URB_INFLIGHT))
> +			goto out;
> +
>   		set_host_byte(cmnd, DID_NO_CONNECT);
>   		scsi_done(cmnd);
>   		goto zombie;
> @@ -711,6 +715,7 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
>   		uas_add_work(cmnd);
>   	}
>   
> +out:
>   	devinfo->cmnd[idx] = cmnd;
>   zombie:
>   	spin_unlock_irqrestore(&devinfo->lock, flags);

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/eb0e0fda-2292-4759-89e7-66e590c4ca83%40suse.com.
