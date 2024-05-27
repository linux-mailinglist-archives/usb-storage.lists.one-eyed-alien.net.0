Return-Path: <usb-storage+bncBCTPRFE7TUKRBQGA2KZAMGQEB3Y2ROA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x546.google.com (mail-ed1-x546.google.com [IPv6:2a00:1450:4864:20::546])
	by mail.lfdr.de (Postfix) with ESMTPS id 9859E8D050C
	for <lists+usb-storage@lfdr.de>; Mon, 27 May 2024 17:01:21 +0200 (CEST)
Received: by mail-ed1-x546.google.com with SMTP id 4fb4d7f45d1cf-57879e94026sf894947a12.1
        for <lists+usb-storage@lfdr.de>; Mon, 27 May 2024 08:01:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716822081; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWLLu3IEbSKNZE5ab+OVuRRzfUjzBZGt42rv79Ri36w1iYlVo8EFzRLVMbakzfp8pV
         bZrCuaDquoOIHllqRo/xTJXePKC3rRugJWTT4iddpnAa8PGk7s8gzR5Yf2UDJOepRe2P
         /Psv+d6ayS6LY76GuPBnMtFOOqoVOPz9fzRpAoah+xNOUwgFzOH03tjwbVyL0HEGicm6
         1Dv+qrlpMH6In6LpJg4lPTzXLsG4sAJLrtj8eySqeRxSPMv0MFCibqmFMrxys0zyCzHa
         rmgK6ORgtljzzh3F82Qr/phQ5qdmtgPlXHEYyuj0PRb3JAl9+onVgk7jEe6UeL6fTWJa
         FYzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=lKk931JVfoYbimoGvWHgMLC/XXgHBlj8NXl6OQjj5is=;
        fh=EbkEPuLi8jPzoM+9PHZEuwd1x9Hw0oYJrNiIJcQQBuo=;
        b=fl3Gd782p2lfFtFo6tjX3u5ZHwWzGkmnvprLDgV2S317gTWiYuMCHtG53X+Q7RJ2vN
         S/7P05XtUXEbIrCQnW4Tb9kx+P/g30yOyaaWhBu8A6jPpA6/bxDqcoZG12eaTdSke83D
         AaU9wWeddhZ7oFexsswjGawxg1GehKcawcaWc+nzmEWm+i3ADmk34T7X5+aSM5/RqUQn
         4ro4tBc+nl7O7OY60DZervUbRkthvQF8rAXzjF2SoClKcKAUa/9jmvoxWyINXLxev9yx
         fD51JaLH/tNDZeXiAjfyDEDmirc9MWxCod0KV7mE5oJUW4AWPRTRRt6F1rX3CzP0AIlt
         yJfQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="QaU0ydi/";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716822081; x=1717426881; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lKk931JVfoYbimoGvWHgMLC/XXgHBlj8NXl6OQjj5is=;
        b=CNiQMPliR2s+d6STBr38DaJOrE/ISKkcX8tyKVE7/hhsOHcB3ryYASp6X57aQFdfkI
         ZHwpYCVcKYkTo34yn8DpL/JvqiTSUvm/oAbvcOCwnTrpEW0ruOborKfz67fw86aStkcp
         EzLjfoSKgUEGfpaEFwlHvRUUsCukHpSmKBmo0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716822081; x=1717426881;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lKk931JVfoYbimoGvWHgMLC/XXgHBlj8NXl6OQjj5is=;
        b=CPGYQGuRBTMKc6bc0fOEwXB1yq4dfarVhcP9XLMIP8VdSjnErHfraqvso/30DWvWr6
         HmmOrHRrez+YXmXrWmlyeDJtoXaKZK/gQT63nFcH0dbqo7IMt1pICgGKetD4qNfCj9BN
         b2AdaQDME962ywe188RW78TZT6k+EKKKF2Qy8uUqWUS3SGCB+7WW2g58HVL1DlYas+24
         6Y47xEUv+Zk1N4OvfQoPulzH1V52ZOhfIHTvMilPJ3Q+Lfe0HYorLK1wZjiCAPCfUpGA
         ZACQEAXvrX/X8L1ACun8Mg+q+LUShmrxp00toxdYk/bQ1K0n7n5Syw8xfO1zESlnb+E4
         gbjA==
X-Forwarded-Encrypted: i=2; AJvYcCXs8zKdCaBbdPxPeUfCVinprK7TseBq2vfpRrbKWhS4Y3+CQVqhJ72Dcw6CYZi5rbbZfZKz3emsYfx75MAV0VdAwOsvZizBq0wR
X-Gm-Message-State: AOJu0Yz5TbxlQ5OvU/2s3LV52cxcN4i68DzNSYeZu3ExZAIK+8Sd0Ny2
	1vBjtYpj8ZGCKMYjG+kRVeDiYGAV7umk3dwS8b/aVJJgAPZ8AY41zO7YuAOPSbk=
X-Google-Smtp-Source: AGHT+IGCOzJfUb5xYBem2PIxWqNnJKi0PK5GXR1ejTZY/wMKVWKXcDvQC9rQMVYhDt1hkWnOX6c3gw==
X-Received: by 2002:a50:f68d:0:b0:579:cf9d:d6a with SMTP id 4fb4d7f45d1cf-579cf9d0e20mr2304951a12.20.1716822080906;
        Mon, 27 May 2024 08:01:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3204:b0:578:3233:2d28 with SMTP id
 4fb4d7f45d1cf-57855cd385els25229a12.0.-pod-prod-02-eu; Mon, 27 May 2024
 08:01:18 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXBhZeygdJQ5cSVp94+uiQ+nAnsqmJGgzyaNtdHC2IoAKnBf366kAVVwEOD8Qr5VaaeAPQhKWT1mvODQTlaZiV2hq0S3YahTzgFZTljNOhKhlq41Kc=
X-Received: by 2002:a17:906:cb05:b0:a59:e52b:39dc with SMTP id a640c23a62f3a-a6265115163mr592768066b.67.1716822078390;
        Mon, 27 May 2024 08:01:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716822078; cv=none;
        d=google.com; s=arc-20160816;
        b=ibGTAMJ4KyLAIYr5oV06wOZaofcTCO7kgHaNHyEFm3WS1WUMinMN49TO9G35c5IqYh
         yfXW8clA1O8+70L0kQkBYaCChvbEq5gl0//rhK5r+I28pBBqOvI6dEJHVckDGayuEkLl
         FWaYGuMslVlF0zm0PZRgH39wrqkGLl7or4k10UcyOVvW8TKrbGphjsOeVymTVJpxHt4F
         fZT+EhdsByqk2PTz8Km7KNZ3lpW/qwgCg+jQ1Ao/kb0rukNgohONpzoAIVePGGVFqty3
         j4q16+RkaSS1wn8lrRteTInUTJkRHSgF6t3aBpuRGWN6ViMwUcwEfrWwNxhfMg7cbcfV
         oTUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=qBaleJfDX7TKwBM116gPab+mpvnp6V9XCtVH05KL/8Q=;
        fh=XDB8ymKEiS0DxTG8YbO0NiO3j17APuHvDkhPSQV17PU=;
        b=YVqjOHXirN6QN3qs/isXpNRY+gMge2wSRMaj8v4BnCheUR1KYRp41YHNOBZRAOZbSQ
         l0BGiYZKU+IVFnK8eSHNPLTE3ooYDzLRulaWwOrIxZYXpYEDifRm6pazMPFQc/8B+8aU
         62evTZwplVM18FixDkcjR84SkBXz26Y8xL41Y0EJPNeR7PO28Qhrgpe+0O5VkyBXj0Bf
         B/Ut3jw2KT1+ubT47QisjO43doAbd41huIQDy0UuguMcKUxOJPALCWr9/mkJKK0Vql9R
         Vd17J2u4TmwbMF+fbHAEIkmZm6Ul9yE1BdxLPm9a1Op3fv3/F6bH1hnzbiV9ShFzC7+Z
         x9EA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b="QaU0ydi/";
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a640c23a62f3a-a626cd8b7e1sor186795366b.21.2024.05.27.08.01.18
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 27 May 2024 08:01:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWDuB0XqoORKrL5St6QJfDOhiLtzQTuBVNFYYH7HaXkMB5m1X62eGCWkKITZ+EMDbD6W+ZcVwmHplz/mN8NHVs1jj0oXPx2vdkvW/6goxGDlVrfKyM=
X-Received: by 2002:a17:906:c088:b0:a59:db0f:6bd7 with SMTP id a640c23a62f3a-a6265116365mr581125766b.71.1716822077855;
        Mon, 27 May 2024 08:01:17 -0700 (PDT)
Received: from ?IPV6:2001:a61:139b:bf01:e8eb:4d8f:8770:df82? ([2001:a61:139b:bf01:e8eb:4d8f:8770:df82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c93b538sm500311166b.71.2024.05.27.08.01.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 May 2024 08:01:17 -0700 (PDT)
Message-ID: <8176c55f-980c-4dcb-9e17-8c9c948ce216@suse.com>
Date: Mon, 27 May 2024 17:01:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v6] usb-storage: alauda: Check whether the
 media is initialized
To: Shichao Lai <shichaorai@gmail.com>, stern@rowland.harvard.edu,
 gregkh@linuxfoundation.org, Markus.Elfring@web.de
Cc: oneukum@suse.com, linux-usb@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
 xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
References: <20240526012745.2852061-1-shichaorai@gmail.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240526012745.2852061-1-shichaorai@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b="QaU0ydi/";       spf=pass
 (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted
 sender) smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=suse.com
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

On 26.05.24 03:27, Shichao Lai wrote:

Hi,


> The member "uzonesize" of struct alauda_info will remain 0
> if alauda_init_media() fails, potentially causing divide errors
> in alauda_read_data() and alauda_write_lba().

This means that we can reach those functions.

> - Add a member "media_initialized" to struct alauda_info.
> - Change a condition in alauda_check_media() to ensure the
>    first initialization.
> - Add an error check for the return value of alauda_init_media().
> 
> Fixes: e80b0fade09e ("[PATCH] USB Storage: add alauda support")
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Reviewed-by: Alan Stern <stern@rowland.harvard.edu>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
> Changes since v5:
> - Check the initialization of alauda_check_media()
>    which is the root cause.
> 
>   drivers/usb/storage/alauda.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..40d34cc28344 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -105,6 +105,8 @@ struct alauda_info {
>   	unsigned char sense_key;
>   	unsigned long sense_asc;	/* additional sense code */
>   	unsigned long sense_ascq;	/* additional sense code qualifier */
> +
> +	bool media_initialized;
>   };
>   
>   #define short_pack(lsb,msb) ( ((u16)(lsb)) | ( ((u16)(msb))<<8 ) )
> @@ -476,11 +478,12 @@ static int alauda_check_media(struct us_data *us)
>   	}
>   
>   	/* Check for media change */
> -	if (status[0] & 0x08) {
> +	if (status[0] & 0x08 || !info->media_initialized) {

If we take this branch due to !info->media_initialized and only due
to this condition, alauda_check_media() will return an error

(Quoting the current state):
         /* Check for media change */
         if (status[0] & 0x08) {
                 usb_stor_dbg(us, "Media change detected\n");
                 alauda_free_maps(&MEDIA_INFO(us));
                 alauda_init_media(us);

                 info->sense_key = UNIT_ATTENTION;
                 info->sense_asc = 0x28;
                 info->sense_ascq = 0x00;
                 return USB_STOR_TRANSPORT_FAILED;

>   		usb_stor_dbg(us, "Media change detected\n");
>   		alauda_free_maps(&MEDIA_INFO(us));
> -		alauda_init_media(us);
> -
> +		rc = alauda_init_media(us);
> +		if (rc == USB_STOR_TRANSPORT_GOOD)
> +			info->media_initialized = true;
>   		info->sense_key = UNIT_ATTENTION;
>   		info->sense_asc = 0x28;
>   		info->sense_ascq = 0x00;

It seems to that we need to evaluate the reasons for taking this branch
and the result of alauda_init_media() to compute the correct return
of this function.

	Regards
		Oliver

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/8176c55f-980c-4dcb-9e17-8c9c948ce216%40suse.com.
