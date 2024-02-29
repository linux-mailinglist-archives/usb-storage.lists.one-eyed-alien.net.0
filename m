Return-Path: <usb-storage+bncBCTPRFE7TUKRB6G7QGXQMGQEEKZWYPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-lj1-x246.google.com (mail-lj1-x246.google.com [IPv6:2a00:1450:4864:20::246])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB7886C87E
	for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 12:52:25 +0100 (CET)
Received: by mail-lj1-x246.google.com with SMTP id 38308e7fff4ca-2d2cd5da6d2sf5406511fa.3
        for <lists+usb-storage@lfdr.de>; Thu, 29 Feb 2024 03:52:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709207544; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0LgcAlilxUPStPls4O8EqJJMr/cJdg26wbIFzNWtOXAfboUdkWVhzm9QgN3cD8oP5
         okDacITikRqxK0PfV/549U9IAofKjSjoqBic2zb0Hd2rlvbQgfaRNUt9zli6urhOIx0a
         YJq9hF7Nprj2Jf+BudI1cIECf3B72mbf1ZlXFwxx04BOAB62ySGIEalMXytN5Aa3hImb
         J+bzpOp72a0x+EZ/UyP5byKjoBHWHjhGt3x0xpmdfiP85R+3XAHbiR21UBPvkI6OutJX
         p8DdQEhpo7WBuM72l6gnxbdB56wBPTJy66p2T7sxQhfBbR1dkdLFIBnz8qV4FIsCp5hO
         FYLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:dkim-signature;
        bh=dyi2H8U7ICFrb4arImuZHD0dmVEU4l2dLV1e1N8VP6o=;
        fh=P/WpHVGDDTiFZobBukclaAazDk0XdcfUKJhXUdLZZw4=;
        b=wQbz211JZmRypz/BI1VYpI2/Oth0Zxwp99jI2+NNfUZ92wXKCYAUvyraAUyg6H5uWa
         VPGBfdVKGIKhFId0VlD7vj3MouTxlGmpQfJj5xOo2/Rqg70l/UzNLvNbuFApkQA+3V2S
         4zD6LGP8OeZdN+JVp9cekqIuyIXwwPOI/FQ4CXUc6E9YzJ5NcpafWm7usXEILgNvbcnn
         qISbeaw9i+eo8ZxI8GpEaue7VV3DmAGQbxEuu6TWt/nb7U8wYlUyxL9UCifBkasH+qAA
         YMLKO4CG9oHhRaG8BqtDvd5ccpuJPK1nfiaQVXF4XfwKRUNwRB08EDWxTiJr+zTn55/r
         g3pw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Z2DzRzfW;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709207544; x=1709812344; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dyi2H8U7ICFrb4arImuZHD0dmVEU4l2dLV1e1N8VP6o=;
        b=gzbeagUZ8iUOK8vtyfwWiU+FMS5uXpGSfxEs0Cf6eaRkIH4gYzOjFZrlYRpz3ECuKF
         bfvdFprm7pWUl0G3qTeg40R+L/8MvWbcpOvOBWhoiRmFbLt+yt1iSwa8mWmlSpiFZ8yx
         ThuXaZUNTznb6HakSQRyfoqZLRdhBRz7D1pso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709207544; x=1709812344;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dyi2H8U7ICFrb4arImuZHD0dmVEU4l2dLV1e1N8VP6o=;
        b=mMG3bJzNoVSIXVUpdHWA+e2JgVSuZqEgjK8MDgO2ANZSxiOCZnfryhI3LrWIjvJxYZ
         vY7baUWu6YWfZ7vgKQFmPcDnhfV1P0Rptomf3uhkkkp6yze23kQghVI9UTAXGjlHJ2GP
         61r7lpoCvNZf/NDDJSwC1EqHA7t1xrTNLpvh/4+9ER9B0b11xkLA2OdS6iYyQJNj8LXg
         rYnfIMJy0ckxcN1twmFdgRvhSPDjK1qEPrxm4XX9xgPTbXlzHpD5vnwtI5MqaJSHWFaP
         GtotrAJQs5BJ5FsWrkKu++NHHV4W64UHprm0RnHVm1h6TC/PVdxTPQ2kTurzSxKTZTvl
         5e2w==
X-Forwarded-Encrypted: i=2; AJvYcCVt/8BQ2yp9Van3bZJWXXp1oGw5UwITHCb9GUfEmOaeyUzmQw3onmQMwtAYpnVbyy93wgEeeJfafQvcVfghjDz3S//E6tKgyVtE
X-Gm-Message-State: AOJu0YyQcMaOYYPNcnbdlWwDSGcooXIATtknTYOFR/b/IyiUtixiVgG4
	RGkwmlDy0Fpu9pPvl+Wn2V3/KhcrZovEeyipK5MS0A5LDaXNgCYVV2ihVBZwmkY=
X-Google-Smtp-Source: AGHT+IGKwgHTjKpQwbq1ZSKKQltBfd8hqJMPXp8eZwa7VG13jqCo1ri2GxTf6OJyuepBP3Wrq/PC8Q==
X-Received: by 2002:a05:651c:22d:b0:2d2:c8ee:c99b with SMTP id z13-20020a05651c022d00b002d2c8eec99bmr1413362ljn.29.1709207544644;
        Thu, 29 Feb 2024 03:52:24 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a2e:a36b:0:b0:2d2:d78d:dd5a with SMTP id i11-20020a2ea36b000000b002d2d78ddd5als283392ljn.2.-pod-prod-07-eu;
 Thu, 29 Feb 2024 03:52:22 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW7F3RsYcDyAUcj0E6R0iZq2Rc0PD3Jl1+uuMqfOweFfX92Qzk39CjDvKURO9Pi7Tz1sxzRbOrypR6JafXSpEZD12JtpB6XUkwBC/XBbjNcLz+tWeA=
X-Received: by 2002:a2e:981a:0:b0:2d2:3392:8c0b with SMTP id a26-20020a2e981a000000b002d233928c0bmr1047177ljj.51.1709207542490;
        Thu, 29 Feb 2024 03:52:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709207542; cv=none;
        d=google.com; s=arc-20160816;
        b=OVovz4ScY47+iM+el5oeSnU+MQXZMxNza5eNlqEgmD/OGbU9GC4L0hbc4VVyocya2T
         W7SiwVXqvX9+CeZEFIvR/db8mjq8hDPSDpd+OUY24NJ6D16B0dFP1K9BTYNWS+5ryWYw
         ohAPfmPR63RtfU0N7BneyAwVASrmnPu4nuVXUFMzX0FTuTIeKp5jN/5yK6nmq2ipb4uM
         06V/Xq2VqzUirzE56vpLngeFweinceWYUuaNqlMQc7ZEkXAM1i2S0eahdIYXbVeJEL61
         HFdHGAoCIJti9aOTJmQEUCgeBR6XzODzJAwIn4/8e0q6xGZYknNAJJkUPslNLNYdiLg5
         yKxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=79gNBOsuDeIYR+Lh3gRA6KG8pNTkHwRoYAWTsnujzmg=;
        fh=wPJD/nraL5SQjToaG3wgIlDBljNfC7crp6RkIg2zaRs=;
        b=vA8shTF57Ko9XLjylEpK7A49PiY8RSpg5ZTQCOjpHYJB2HZa7KVWgOSss1Ffp+RIaN
         r0VzXrlXam4yLvp6T9EBGo+cdoqAJYH6z++In79HlVnsPRoSZTw7TctzKuWGcAZ6kqFK
         f4zeufMXWf/I4VOkenU8vUTb7Cr+huBxCByOjgEciEc2Mo7KI1FfU3tt9dkDuY6TzCES
         gvhsTf7Jvzid6qIReekT6kPkdenik7Md+us3I1tczJNHJG3iWkykiqGKhrhTiheIbIua
         hCtr9IGVUkaEQoEkNaAzAkxh+yaYPRZfj87Lij6+i/1csN1eimXtEkYUSJAYEk+chRNv
         VN4g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@suse.com header.s=google header.b=Z2DzRzfW;
       spf=pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=oneukum@suse.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=suse.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id k37-20020a05651c062500b002d2cce311b5sor247332lje.12.2024.02.29.03.52.22
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 29 Feb 2024 03:52:22 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCWrLAZKJCNzzeBP9MrwSx6aGMZoSzEDoyokoNwMtq4m2lfjOALN8Yuf0n4CY3YNKBIJzaMHxWv9YjCFFLuIfKG5MFsq9EsfnPzKAHDxSMUVKKV3Omk=
X-Received: by 2002:a2e:9f46:0:b0:2d2:64ca:7a2d with SMTP id v6-20020a2e9f46000000b002d264ca7a2dmr1304324ljk.31.1709207542106;
        Thu, 29 Feb 2024 03:52:22 -0800 (PST)
Received: from ?IPV6:2001:a61:1366:6801:d8:8490:cf1a:3274? ([2001:a61:1366:6801:d8:8490:cf1a:3274])
        by smtp.gmail.com with ESMTPSA id bj12-20020a0560001e0c00b0033db0bbc2ccsm1690355wrb.3.2024.02.29.03.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 03:52:21 -0800 (PST)
Message-ID: <7a48c332-acbe-4677-b189-9dda01151d18@suse.com>
Date: Thu, 29 Feb 2024 12:52:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v3] USB:UAS:return ENODEV when submit urbs
 fail with device not attached
Content-Language: en-US
To: Weitao Wang <WeitaoWang-oc@zhaoxin.com>, oneukum@suse.com,
 stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Cc: WeitaoWang@zhaoxin.com, stable@vger.kernel.org
References: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
In-Reply-To: <20240229193349.5407-1-WeitaoWang-oc@zhaoxin.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=google header.b=Z2DzRzfW;       spf=pass
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



On 29.02.24 20:33, Weitao Wang wrote:
> In the scenario of entering hibernation with udisk in the system, if the
> udisk was gone or resume fail in the thaw phase of hibernation. Its state
> will be set to NOTATTACHED. At this point, usb_hub_wq was already freezed
> and can't not handle disconnect event. Next, in the poweroff phase of
> hibernation, SYNCHRONIZE_CACHE SCSI command will be sent to this udisk
> when poweroff this scsi device, which will cause uas_submit_urbs to be
> called to submit URB for sense/data/cmd pipe. However, these URBs will
> submit fail as device was set to NOTATTACHED state. Then, uas_submit_urbs
> will return a value SCSI_MLQUEUE_DEVICE_BUSY to the caller. That will lead
> the SCSI layer go into an ugly loop and system fail to go into hibernation.
> 
> On the other hand, when we specially check for -ENODEV in function
> uas_queuecommand_lck, returning DID_ERROR to SCSI layer will cause device
> poweroff fail and system shutdown instead of entering hibernation.
> 
> To fix this issue, let uas_submit_urbs to return original generic error
> when submitting URB failed. At the same time, we need to translate -ENODEV
> to DID_NOT_CONNECT for the SCSI layer.
> 
> Suggested-by: Oliver Neukum<oneukum@suse.com>
> Cc:stable@vger.kernel.org
> Signed-off-by: Weitao Wang<WeitaoWang-oc@zhaoxin.com>
Acked-by: Oliver Neukum <oneukum@suse.com>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7a48c332-acbe-4677-b189-9dda01151d18%40suse.com.
