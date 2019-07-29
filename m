Return-Path: <usb-storage+bncBC46RKEB3EGRBQN37PUQKGQEERDTSJY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x647.google.com (mail-pl1-x647.google.com [IPv6:2607:f8b0:4864:20::647])
	by mail.lfdr.de (Postfix) with ESMTPS id 1023078AE6
	for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 13:51:31 +0200 (CEST)
Received: by mail-pl1-x647.google.com with SMTP id n4sf32488793plp.4
        for <lists+usb-storage@lfdr.de>; Mon, 29 Jul 2019 04:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564401089; cv=pass;
        d=google.com; s=arc-20160816;
        b=E61tPWd8nOHA+1056t+DYSwTeP4vbrFJ+Niorzcri9/kGHNCQR9XtR+6bHplcY9v4s
         nzM+sbxtQZZOUOUKSZp5+pNYvJUmJeq7fRE6h2tLbpO/klohvjb9BysbFJxa/Dy0WKDb
         MFy/5fEbtmqT4j4EF9n/D9XpqHca0QrMtnoppmuMNtcRF7TS+H9dbJA0Lrrlt5Vsqavc
         JFqvXbsLorED2iaPzTCf22d49FkXZPfbCurqI791xdo8+GGBwdpjLkqu+avZopOIbEBz
         0rVT/8swILZ/2ROSwE7FLlO+H/WCUTAvPmGDgJlLTLYg+Z5GYPZAes2E7U7Fe8GKdZDD
         7HAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=QKsNXcMllwtRbI7+ATThpFB0B4zyEIDY4Dw6/QZpynM=;
        b=tfbKPliHHaIODLGrJdLf4RrwcFF6Lvgf/forFApLTo6+xch1zdma6HP4ixS6589LIh
         eG3qdJIC9RCxTRcHRsZIrWIn7DWQmUd1nh6i/bAmRaS+DWmBqLOHVNhQlDKV9RNbWpBG
         rXlci0/CJ6wqNMtg4dIkKZROTg4u9BSUXWGN/0wouVxb2zo5xPsqqtxBoCkLZno4YgZ8
         Lyf958l7M/vJYSQtNGrOys9hyBYki7gyFuAzKG+Et3f3uUWMLxyejlhtQEMZFDnTBsCh
         0vOOrpIqA1vEkcHQwmB0cdg+cqhO9Bqw/DKFDEIMKmwwRyxXZZ7g0LREFkZE+d8LwOLr
         uZfQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o3Tcex77;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QKsNXcMllwtRbI7+ATThpFB0B4zyEIDY4Dw6/QZpynM=;
        b=X/PqRkPbTsZNr2R6bmCcTjTjSfaENTKQSR5hysn92EeasQDY5ZpcviSVoRd9I4ehG7
         /dLRSV66/dnZNo76uDmP4mv2bCYdmtQ8Ty4sGDYzV0NqY3ZObqNscEV1JdQ533gsYG9i
         ar2BStWWr7g2geq/DVhJum71El+dRZ4ynNddM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QKsNXcMllwtRbI7+ATThpFB0B4zyEIDY4Dw6/QZpynM=;
        b=F/hdpasG3P+JWHdj6XnyR6ZflG8yEe/0X24oAtkKqQCOsaCLkqngCQ5+/wghpvADTZ
         P+e3QeTR6Ljmm6I5R+8RSrXXbjD3MFqaxMCQC8Xxwk8AyGwC+p9500B2fIVh7wkrNsZD
         pY+mh6+cnJ0Wa18zDFC0/qG4cI/AW55Ky0SA2KXlrwLTrfgFzAJElwiL1DcLhPFTiPEN
         x+hWrV5gkB1P89B6/ViJHIAedbOKjlppJuxoEwgfWASjrxefREWrHrlSmr79RQ/9Eoea
         Z/8ZzPOtM1+S71WCQITJKONkAAtYp9k+LxCK+suu0jcKU6GzT1VZp6ndbAjTFbsUwGIp
         r8KQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVAXplgA/3rNpeGKeHrSzQIIBMpu3BTyjOJwgbf586Syjn70Her
	cUSJWiKo/+PnOlqLr8/9cIw=
X-Google-Smtp-Source: APXvYqwXenC8e01p9qn/ehKXUkIuHwrs71TDnfwvUvXjhEPd2iHVCQnrLILfwKQHSul8JbZxEGfoGQ==
X-Received: by 2002:a17:902:ac85:: with SMTP id h5mr110941418plr.198.1564401089752;
        Mon, 29 Jul 2019 04:51:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:ab8f:: with SMTP id f15ls17047296plr.15.gmail; Mon,
 29 Jul 2019 04:51:29 -0700 (PDT)
X-Received: by 2002:a17:90a:a00d:: with SMTP id q13mr109627854pjp.80.1564401089403;
        Mon, 29 Jul 2019 04:51:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564401089; cv=none;
        d=google.com; s=arc-20160816;
        b=o+g5va4ArVHsMihRkcilRkPEuk+coS2Lc+O9fqqhBW/bVDdTsi9orQYihf+G4Vzz11
         DFwMa+bBGiUn1Jdkf4S1ZAeDN5bsDxbKEBfVZZC8g/s2xkHzTLEMnCMjAlOYauWwiFRG
         sNitJrx7nrBdjjvC2sRN+Q53QQbz9Pqg/6zd66ADWokRV8XJsKInuByGHZl+PA0BWDko
         d72VDNQrz7COsHJsgrlTq33q+zaoGdw8Cwcs2KsrFPY/GK+DFAv3tDiZAiqe1o7gYVkU
         zP3OCHgoH682AnvHiXlup5IXGCj1SloBQPrxfztHDWvb0Mju0S8olosSqEIFOqm/NC85
         aVyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WqRMMRupBKE7/qZ1bepdmX1qSW8ae9qt5Rfev+leb0o=;
        b=ughQILmAGDHuIoO+YJDtBm9cKfZCz16W7sZB6gzfji9egxEaqXNtTvuPdPfOCuYueC
         MLyZktk65u3e4vnvqEZXGrAr5ZWRRr75RfuL1dBhSQnXuDOFOPKA4uTZVKYPaRF/RAKH
         A8symJDJfV+8kRlEnVV1bnFBXzzjoov7hFBvSnioAxadCAq9u5gTc9JqzFXY9L27H8Is
         EzIS//9TJrZCLMA6QbmodJQF51n0eLGLS1SpULAqKFMVm3Evlh4eR7HjTwIH2YUoP7zj
         sY6ADPyVE+eQ9olzFImEDqMkOhMOT2zyRyBy1j9x4bst6sqP9ugsAlrge/eqoiXlJ5pY
         5HiA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o3Tcex77;
       spf=pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id l68sor73513300plb.69.2019.07.29.04.51.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 29 Jul 2019 04:51:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:902:9349:: with SMTP id g9mr107924212plp.262.1564401089268;
        Mon, 29 Jul 2019 04:51:29 -0700 (PDT)
Received: from ?IPv6:2402:f000:4:72:808::177e? ([2402:f000:4:72:808::177e])
        by smtp.gmail.com with ESMTPSA id h11sm62244985pfn.120.2019.07.29.04.51.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 04:51:28 -0700 (PDT)
Subject: [usb-storage] Re: [PATCH v2] usb: storage: sddr55: Fix a possible
 null-pointer dereference in sddr55_transport()
To: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 Oliver Neukum <oneukum@suse.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20190729114936.6103-1-baijiaju1990@gmail.com>
From: Jia-Ju Bai <baijiaju1990@gmail.com>
Message-ID: <b843a770-2262-3d0a-75ee-8c714d804963@gmail.com>
Date: Mon, 29 Jul 2019 19:51:29 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729114936.6103-1-baijiaju1990@gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: baijiaju1990@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=o3Tcex77;       spf=pass
 (google.com: domain of baijiaju1990@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=baijiaju1990@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Sorry, I forgot to send to Oliver, so send it again.

On 2019/7/29 19:49, Jia-Ju Bai wrote:
> In sddr55_transport(), there is an if statement on line 836 to check
> whether info->lba_to_pba is NULL:
>      if (info->lba_to_pba == NULL || ...)
>
> When info->lba_to_pba is NULL, it is used on line 948:
>      pba = info->lba_to_pba[lba];
>
> Thus, a possible null-pointer dereference may occur.
>
> To fix this bug, info->lba_to_pba is checked before being used.
>
> This bug is found by a static analysis tool STCheck written by us.
>
> Signed-off-by: Jia-Ju Bai <baijiaju1990@gmail.com>
> ---
> v2:
> * Avoid uninitialized access of pba.
>    Thank Oliver for helpful advice.
>
> ---
>   drivers/usb/storage/sddr55.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/usb/storage/sddr55.c b/drivers/usb/storage/sddr55.c
> index b8527c55335b..d23aff16091e 100644
> --- a/drivers/usb/storage/sddr55.c
> +++ b/drivers/usb/storage/sddr55.c
> @@ -945,7 +945,7 @@ static int sddr55_transport(struct scsi_cmnd *srb, struct us_data *us)
>   			return USB_STOR_TRANSPORT_FAILED;
>   		}
>   
> -		pba = info->lba_to_pba[lba];
> +		pba = info->lba_to_pba ? info->lba_to_pba[lba] : 0;
>   
>   		if (srb->cmnd[0] == WRITE_10) {
>   			usb_stor_dbg(us, "WRITE_10: write block %04X (LBA %04X) page %01X pages %d\n",

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b843a770-2262-3d0a-75ee-8c714d804963%40gmail.com.
