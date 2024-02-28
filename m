Return-Path: <usb-storage+bncBCTPRFE7TUKRBIOQ7OXAMGQESM577RY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x247.google.com (mail-lj1-x247.google.com [IPv6:2a00:1450:4864:20::247])
	by mail.lfdr.de (Postfix) with ESMTPS id B94F286A968
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 09:00:34 +0100 (CET)
Received: by mail-lj1-x247.google.com with SMTP id 38308e7fff4ca-2d2d59be640sf802801fa.0
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 00:00:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709107234; cv=pass;
        d=google.com; s=arc-20160816;
        b=hqN9MO9hzAS6RBkJMKFN2t+nWmKXMhSKVF/KJ56X1QhpzE8eMzlw1Mze2OQMtUF+t2
         i/rCANc/VuZzMxxhCMPgKXQVtz13DN4M49A/oPUwp8X9IDAo1xYWIM63r8KnHQXV+7by
         Pc8VwaANxVKhX8kd2s+S+4x38kYAF3qQo4b4Jy0TdFD4nfFXmMWkITspjPpjCc1fqlqg
         zV6S/zISNhvtRguG4aWT2iMmWo4dYKP4GowSdy7NOlERjl7FqMDVikYVa3mSOjO9wDFH
         W34dyziHpxumZG0zc1f+EHk4fhXSz8KTJ+2K0QkxoD28v3kv5YPUkuJ6ZrziNGnnKrUr
         SDjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=Z0EMoTWqTvGvqaZicnngw37iQUeMF4TDv3r6mX/CdMs=;
        fh=CpaFhUjYgpNB0Ib0ijqBkuHQHO+QVIjlUat2SSr4qPE=;
        b=lVnrgdF2ddxySs6h5q9wOjoV6kHlgYwVR8bfiJ8G2nvIc5/PDFtt9CYAU38juKoXUe
         wdW97d6iOUzyYcyI8hCv/RG6uLVTksJ71TmnXQnHu5phRk6XjMr69F7WVxfr9JDMzwVC
         0IyLE/M528DKVWIp1z4T+k4qExfrReYmCEXmZEuMCzA1ZDnZMvHy38svITvV5Kpc1q+o
         pOqnEFDogS3oCDpYwem18uG8Pxdq3O/s0Zi0LlgOpdyFvL0SlEDNm+gmdXR+FJyK+8Ts
         2YsHTtD6oI1EzX8St78qtyltXoL1Krw8WGHCCeQoyKvYa5H91DkkF08mtr8VA4RcUaDZ
         ifsA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QRe7PyMg;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709107234; x=1709712034; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z0EMoTWqTvGvqaZicnngw37iQUeMF4TDv3r6mX/CdMs=;
        b=RGr17EjqDtz5cWN1LrDn00sGy5iLDXeY7QT0H5z8H/ED8QnYMErq5F8okm+yN2mb1H
         Nm4NcVlp3uabtxAbQfrea6vHtZeCuXYEBIw+VykE+LPfAiTn4gnlr4+6+yIVab4J+5ON
         68LOLRbZ2WiN40wz0aUOhPwJolAH9CB2mZ9nc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709107234; x=1709712034;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:content-language:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Z0EMoTWqTvGvqaZicnngw37iQUeMF4TDv3r6mX/CdMs=;
        b=pdIB/PYfak/V6/DHqCb/Ugqg8WGTO/HQC614UXyK7yd1ANpIJ6wUHugjTApzf4LfVk
         HSV3Vn/5QJda56duGqayPGf/aDKW61+hvcL4ofHQGqOk362LJbKDJLvEK1+74+Jtzr8O
         fWXxTPCIwfixcU64Vb87rU6UlL1Rx3i0y3l5sK6UzZnYhNmKc1nnS0TDM4xGtqSeWSN0
         vv3qlas521o8cOvNMZGCw43e0QCAB3c/Wxjogb6c2P1b+c4LUx2RwG6yM1sE3q4BKABi
         l6vYuz44CIdpioDDA/w8Wk3mUkjpsm/qPV65Hg5rud3s3SmtA4wIjn194ayvys8O8RXu
         zhXg==
X-Forwarded-Encrypted: i=2; AJvYcCXQM0JZK4fV6iUy7OQIQbNGUImv2FRyMIEc+Ah7/tYq8fiqzGhYSqqslXC2pIFopSrSAwjYqkZ4f2/h0WMTGH/Dg+Nqe7SlNoBj
X-Gm-Message-State: AOJu0YyJ/UKTTBjfebXTk8d0mItk6gKB46JIETzV/SSsUjGu5k69hqcT
	j5765hl5LHVtk42NKHhkRY8t2x0vznE7bDh9qwMBO6xeoRNE3AF56vp+zmIl7DQ=
X-Google-Smtp-Source: AGHT+IE/X9UHYG49ATYu1DlWxT1BkVs5pt5i/oS1TBF5ErG6b3/4Dl2kCJDFkRVB5svBPQUGpon0sw==
X-Received: by 2002:a2e:860b:0:b0:2d2:2fe9:2896 with SMTP id a11-20020a2e860b000000b002d22fe92896mr7124997lji.42.1709107233699;
        Wed, 28 Feb 2024 00:00:33 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:a499:0:b0:2d2:6574:4024 with SMTP id h25-20020a2ea499000000b002d265744024ls24593lji.2.-pod-prod-09-eu;
 Wed, 28 Feb 2024 00:00:31 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX5STtaEb8Wq/aktoA72VzhMR4AZ4dG6/Rl0h8JTwnQuWXL4egiEAg/v5zC3jOYKx/HowhOAvym56JeF22GiLjeaZXHGOtHZqb/A7jChmMU0oKUJY0=
X-Received: by 2002:a2e:81c6:0:b0:2d2:3dd7:813d with SMTP id s6-20020a2e81c6000000b002d23dd7813dmr7440244ljg.17.1709107231513;
        Wed, 28 Feb 2024 00:00:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709107231; cv=none;
        d=google.com; s=arc-20160816;
        b=RQMEPM9znq5s7sNkaG6lt5JTj4zc7MpAXM7aseq46Acr4CDPjIR3axPEvDDPctEK2w
         dilpRP1Tg7MavfI1AjnG2ulBajfJ51RYbJUOFUlfhMOF3mAg7/hPbaJI12xFeTMiDZxX
         u2B31y8dlfjHxJP4c/WsZDswEPDDkE0uB2DtlY0oBCodeDXeZiC2t32jQ2c9ANyzPCYg
         1ksvNuzBmqKoyh+rUtSz/0ppowh1OG7erUE5G3czRtamwXlK46rQmCin5IqxTozNwrDc
         N1YQ7wk3IhWWtK0RDIqcnFVYVTxu4oVG7/RaotQoTzbJ2bn+gCUTKiG7Gx6PB8Cp2wcP
         nBgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=RMPPuq20bTo2IvgrEDXMIqv+e5KFkAdYGzZyeqGK2xU=;
        fh=qGFeZdcXuEvnmMsWnJCM2TpJQ21NdFzX2kzx0ChcoM4=;
        b=JQDBtN1e2cbDzhLQpAIIz5TCdlZveQdz0ZTMSFFBOHj7t0mtVIO7mMqhBE+sWA2YX4
         HDBJtjnMKroQLlenM5qS8BRhRVqr4EVG4v7Yi4MSs1tvsaTWHn5CsqfpRTlAKs+iktKM
         lUnnYKZyn/DYzdROKnG25iO5XgEl512cknFk6JGJ140dcCfv+hWhq+PnBKzmBdz8vGXy
         XbIZHkFYPeMy+1drPPX2154waeqIN8h2GBDsJE13c47YEvYoL21lV7YVi4o8DvzdxYMi
         e96Uvy52b4HHUpSQh/2atotbh0gD/LQZ8w7aqAdg8Ia50dNz0By1QCM3bI4VtUd4QWlC
         w0Hw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=QRe7PyMg;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id i185-20020a2e22c2000000b002d2b088a95esor502613lji.4.2024.02.28.00.00.31
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 28 Feb 2024 00:00:31 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWRPW+sWSsIxNtXsHWXhiTMc0vACJDHv1XbWDOzMTZw9PVbUR1syo1axBkEY/tdquWVvgwh06gZeoI1knJspBmFR6Xr5bAXi5HyJmkhEb+5eEOkQds=
X-Received: by 2002:a2e:a54a:0:b0:2d2:3915:cfc4 with SMTP id e10-20020a2ea54a000000b002d23915cfc4mr9991963ljn.4.1709107231035;
        Wed, 28 Feb 2024 00:00:31 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id bn21-20020a056000061500b0033e033898c5sm387989wrb.20.2024.02.28.00.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Feb 2024 00:00:30 -0800 (PST)
Message-ID: <e8c4e8a3-bfc3-463f-afce-b9f600b588b2@suse.com>
Date: Wed, 28 Feb 2024 09:00:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] USB:UAS:return ENODEV when submit urbs
 fail with device not attached.
To: Weitao Wang <WeitaoWang-oc@zhaoxin.com>, oneukum@suse.com,
 stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com, stable@vger.kernel.org
References: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
Content-Language: en-US
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240228111521.3864-1-WeitaoWang-oc@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=QRe7PyMg;       spf=pass
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

On 28.02.24 12:15, Weitao Wang wrote:

Hi,

sorry for going at this again, but there are a few technical issues left.

	Regards
		Oliver

> ---
> v1->v2
>   - Modify the description of this patch.
> 
>   drivers/usb/storage/uas.c | 21 ++++++++++-----------
>   1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 9707f53cfda9..967f18db525a 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
   
> @@ -562,9 +561,9 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>   
>   	lockdep_assert_held(&devinfo->lock);
>   	if (cmdinfo->state & SUBMIT_STATUS_URB) {
> -		urb = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
> -		if (!urb)
> -			return SCSI_MLQUEUE_DEVICE_BUSY;
> +		err = uas_submit_sense_urb(cmnd, GFP_ATOMIC);
> +		if (err)
> +			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;

Either we ought to use SCSI error codes or generic error codes.
There is no need to translate all but one error condition here.

>   		cmdinfo->state &= ~SUBMIT_STATUS_URB;
>   	}
>   
> @@ -582,7 +581,7 @@ static int uas_submit_urbs(struct scsi_cmnd *cmnd,
>   		if (err) {
>   			usb_unanchor_urb(cmdinfo->data_in_urb);
>   			uas_log_cmd_state(cmnd, "data in submit err", err);
> -			return SCSI_MLQUEUE_DEVICE_BUSY;
> +			return (err == -ENODEV) ? -ENODEV : SCSI_MLQUEUE_DEVICE_BUSY;

Same as above and below.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/e8c4e8a3-bfc3-463f-afce-b9f600b588b2%40suse.com.
