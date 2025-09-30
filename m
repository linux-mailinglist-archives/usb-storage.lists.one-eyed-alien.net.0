Return-Path: <usb-storage+bncBCTPRFE7TUKRBKNT57DAMGQEXYRM63A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF0ABAD0AF
	for <lists+usb-storage@lfdr.de>; Tue, 30 Sep 2025 15:22:51 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-634741fccc9sf4570349a12.2
        for <lists+usb-storage@lfdr.de>; Tue, 30 Sep 2025 06:22:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759238570; cv=pass;
        d=google.com; s=arc-20240605;
        b=kSWO7/ODq1cSJNeDPddCtaHPbburCi40qsizxoCwTDsov41DqzfUPpqEbP7t4j1o83
         OkfQ7PrVTKQMV/+UOpCI863UMSbgcCw/SI4yhk6KurTIK5K3yaKi0ue1E+GyJlZoGH+V
         b306/w/ykWNT0ZQDGveSFgz223psNjgBjB0nX2b0aOY4eU86NJCmi5EfLtZ3672XsZDS
         y5TrAr6MI5r4KplzbeqZptjjAyEogcRHCUztseDrDq7WjFNAQEl090OgmxEDfXwoW4Pa
         FrfVKIfQHJT2qhMycvVmtqyvUWhdf+BmigzrhvPJ75n4NIN8l5brML7NBr5GpTszfHZW
         ilIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=4N1rkzyLXrj/5/nfv7sZJLe6Vb3gWOYAe6GOpaZIPc8=;
        fh=nXzSO5Ll3YbTGcAko/ufANXMW26tCj4VdU11wDADc1M=;
        b=ah403+YXqvCg0nA00qdlvzmfthDXCUlTyls5vZd6ujPUPsygv97SoYIT/y5kZaQw+l
         QLSDQUD8JKpTlLw5aCWTLl+9uTGEcCoHF9EFjd9qyibSA5mswRjPMLxoKFqB25GK5S6M
         XNfIrMgOvlMC2OKeZBMba6nDUxwaNtRXfkJ/DeVuPJN3SHB9UXqEegvhlgYQ9+1nBm70
         BN05PWadp1rvWfaXBvBnh0QdUecpMWBUTyHU5gavZQsJtS06EOCzKi7PTTAR0ChwhJzv
         kfTwBJ2kCwghW1E85pybMyxqlk34LGa6toQGd7+Qs9Qux6rzozzfVSmq+gFYx/dYOv0F
         3TUg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=aCUHKW1I;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1759238570; x=1759843370; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4N1rkzyLXrj/5/nfv7sZJLe6Vb3gWOYAe6GOpaZIPc8=;
        b=kH+kcxU5nVBIM9QtkdZ+4fCBdLq5OIRmjtJMiBMy01fze7/WWtz7+prJPM7A4EoMLq
         lnIlVU6GAiAOsGupudBQtQ+vH9sklyYNu6bxJ2ZNlUf/8ZL1eu5br89UGTCpiJnWq38C
         UBNR8kQMwU5QzBW1JqZ4VkdedmnsmdYVyZBW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759238570; x=1759843370;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4N1rkzyLXrj/5/nfv7sZJLe6Vb3gWOYAe6GOpaZIPc8=;
        b=ROZSU7GarGe1Z64/PN0itMGuQtlcHskbLTFL8PU9WK8TOeGEb45l52h1CbgwYrOpuM
         q997tOxd2OeUAgVAlHHHr9OVk0pxkDIdkdrusnL+7Y6Hpfh+DlxLvZONda/KHNirdR2O
         mG0DswsTK2F7R4K5hd8ljTRVFcN17ghunGc0tSAVoozp2M8Mdl/bZF4jrURMM+QZjiZJ
         EEanotqORuQMiFN/l9VJ+KAXQeIZzEhHbCp+Xcs3GHCeLFrTe0fMYojLTM1mC821cavV
         tPRjdA5sNgCCE2v0ZOKHLO71B8fXbtTT/5K+SIceGpvpCKC39qV5n/JPykSHiVzLl+GI
         qqHw==
X-Forwarded-Encrypted: i=2; AJvYcCV8qYEcSC//fHqa0wcuxYPgUgTVAqowq/B/llzy4Y0N3kNooCvNaWAfpG+IYX9ZtHnLiqtxMQ==@lfdr.de
X-Gm-Message-State: AOJu0YwjHpyFQ5XyQLyd2X807i426pZByiQVMmq/SBpAMrUGV9b2Gv0M
	cUPrte5JRZfqF2y1u6VkUBeqoZ8fIF/CP5cYn245QsYNlGFNI22UiNNn9JoPUjMhzOg=
X-Google-Smtp-Source: AGHT+IFL4SrobBtWZ2RrjpI2zuVXj+VZr+wfUrZFewcoz1wGeqe9D9ndjiTmBtTNNqwo8WsDAVrzsA==
X-Received: by 2002:a05:6402:40ce:b0:634:a852:5104 with SMTP id 4fb4d7f45d1cf-634a85259dfmr18742162a12.24.1759238570016;
        Tue, 30 Sep 2025 06:22:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h="ARHlJd6wmQDkXIJ0xyiljsdODwD902xKbdR73EI77mXuhWXtyA=="
Received: by 2002:a50:c048:0:b0:634:be0f:8f51 with SMTP id 4fb4d7f45d1cf-634be0f94f7ls4028510a12.2.-pod-prod-07-eu;
 Tue, 30 Sep 2025 06:22:47 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXv67dBFA02UDq4Da7OXVCV21JjKcKLEuIGcxAnWZr8UPV+iLCPbbzv3qYe6IQkMkHIhutjRlLp3xlCXg==@lists.one-eyed-alien.net
X-Received: by 2002:a17:907:86a9:b0:b3d:b8c3:768d with SMTP id a640c23a62f3a-b3db8c3a7f6mr844389266b.7.1759238566945;
        Tue, 30 Sep 2025 06:22:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759238566; cv=none;
        d=google.com; s=arc-20240605;
        b=WoQY7+wk7ri3j47s2yS2MpAYru86u5v/7rwl7oqkGgyhuHUjQ4L/O6Fbe93Yi73KvX
         E4lGh998zS5/jC9kustmwolDVQgbsRQdzFjMcjinzvfkdokpE9A/DlUMPpkJsLfRJHoC
         tPYNth7lvsll/f1Mad6ffkPUuRzx4Qn2He2Us2Np8qufx4vXVLl2b0Adk/dZUbE6+wGQ
         5vC5wAYkxwzQceNjXipAaXFSRUXQyY8q0X0wmJHJuJBEfqY9xAAiyEUUiEOkVOJCpXfy
         V9VGuZwsL6tMGvy9etBdfHeWBx/dU42EH3qN+SfwDuWJeHCTRs5U/LnqgIQBnmbkcS3g
         8b8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=uwAebk43If0gjy3ve3r9IFpSG2OftYAndV3V+n10Lek=;
        fh=Eajbxn0+0nRf1LDZ4xBzQMDPG0rvUVY5qRqYdG8fZqM=;
        b=V5G01FlELIBrg/VDg4Vheob2JFyGLIBK3NLw933fkYj19GuSzC+1nJyEphrmkZ/hoN
         2uQGefQMzgTKhPNmU4pS2S9z3lvCUa7iB76D7OiADbTZ5cYwFNCkvpg7YDh8dcOspUbN
         YhjCx+aBH64Rx1FNvrUMrzvWU5cDE/WNVxsON1UfjuFB4L9lj+NuVWZRhy9KOa3JNa0G
         JaQxFlWeVRHjkr9vMQeaHSy3HZ4ZgamU9Zmh9JVyrPlwtSxJ/w91ObGx6R9FivuAXnn4
         E9R6ANzgU6lY/hgDLScNL9mUM78GZsr/zEn49494fhwtRn4FdEa2tNRcFzBwKdCk46VZ
         eeEg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=aCUHKW1I;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-b4560ade553sor55994266b.12.2025.09.30.06.22.46
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 30 Sep 2025 06:22:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXJHXFGWw4fjo+ALxrzrr9OvoAdwCdVjuLdZ3XHgo7/nCSnI0duyKA1SwzC08Hh656czL3ll3F+l8JtWg==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncv66B2XVKw115c+LgnJTAOBjsWqqEsMSPNCs2hHcCuBLa0+5LbA4aaGRfIghtY
	8zBG0lWovWlczgWBMMgGpF+22+URxHIW55TgKnfB+rYMrK3tv+4GXnO/iLEm+gyzrQJpC1nrDqP
	i/H5Y+EOGINFEpoqGGbuND3QdFynLM/4OEsu39OnzP4hmLxD/jPIvzwPo353/kOJ0tleUaXGuvj
	tTV3KBJr1idHOMQ788kXym0y6/YQzuEYQRwjGWk6bBhWX5M27P2pDuOmMaGWF4pJHUciz3D+5Ks
	+BlM+R+9FQ/tXqVGfYjsXyOvBq1spvnJpxnfiQoU8NvA3W/qgMimXa03lzRKDTLYiM85d2QVA9Y
	hd23PUCIi1VPwDgtNzk3bUZlLg32KYj6dMHGBG8d73/RknyzHqM93E8IbCsFFIxOkY/gWzG79r4
	OPCP84mvDAYtghtxoaE+DfbFs=
X-Received: by 2002:a17:906:c150:b0:b04:6fc9:f108 with SMTP id a640c23a62f3a-b34b86a19b0mr2094007966b.24.1759238566474;
        Tue, 30 Sep 2025 06:22:46 -0700 (PDT)
Received: from ?IPV6:2001:a61:13a9:ac01:423a:d8a6:b2d:25a7? ([2001:a61:13a9:ac01:423a:d8a6:b2d:25a7])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3b0c9c9e8esm686349166b.59.2025.09.30.06.22.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 06:22:46 -0700 (PDT)
Message-ID: <6c65094e-81e5-4ce8-8592-9458c51116f7@suse.com>
Date: Tue, 30 Sep 2025 15:22:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH] fix urb unmapping issue when the uas device
 is remove during ongoing data transfer
To: guhuinan <guhuinan@xiaomi.com>, Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-usb@vger.kernel.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 Yu Chen <chenyu45@xiaomi.com>
References: <20250930045309.21588-1-guhuinan@xiaomi.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20250930045309.21588-1-guhuinan@xiaomi.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=aCUHKW1I;       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

Hi,

On 30.09.25 06:53, guhuinan wrote:
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
> submitted URBs, when being completed (giveback), call
> usb_hcd_unmap_urb_for_dma() in hcd.c, leading to exceptions during sg
> unmapping operations since the sg data structure has already been freed.
> 
> This patch modifies the error condition check in the uas_submit_urbs()
> function. When a UAS device is removed but one or more URBs have already
> been successfully submitted to USB, it avoids immediately invoking
> scsi_done(). Instead, it waits for the successfully submitted URBs to
> complete , and then triggers the scsi_done() function call within
> uas_try_complete() after all pending URB operations are finalized.
> 
> Signed-off-by: Yu Chen <chenyu45@xiaomi.com>
> Signed-off-by: Owen Gu <guhuinan@xiaomi.com>
> ---
>   drivers/usb/storage/uas.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 4ed0dc19afe0..6bfc7281f7ad 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -699,7 +699,9 @@ static int uas_queuecommand_lck(struct scsi_cmnd *cmnd)
>   	 */
>   	if (err == -ENODEV) {
>   		set_host_byte(cmnd, DID_NO_CONNECT);

Why then set the host byte unconditionally?

> -		scsi_done(cmnd);
> +		if (!(cmdinfo->state & (COMMAND_INFLIGHT | DATA_IN_URB_INFLIGHT |
> +				DATA_OUT_URB_INFLIGHT)))
> +			scsi_done(cmnd);

It would seem to me that in this case you need to make sure
in the completion handlers that scsi_done() is always called,
even if the resetting flag is set.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6c65094e-81e5-4ce8-8592-9458c51116f7%40suse.com.
