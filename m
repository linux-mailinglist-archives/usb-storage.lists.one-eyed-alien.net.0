Return-Path: <usb-storage+bncBDJNPU5KREFBB65B7G5QMGQE27CDU3A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A5AA057DE
	for <lists+usb-storage@lfdr.de>; Wed,  8 Jan 2025 11:18:37 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id d75a77b69052e-468f80bc82fsf350948981cf.1
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jan 2025 02:18:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736331516; cv=pass;
        d=google.com; s=arc-20240605;
        b=IyM250F1AHEql3NCjWsaHJ5ykg7Bo8E6qvIGPmIhNB6tpTfe/jY9Jo1Q2XQ7E8OYSk
         6s1wrn4sLuIAA1u78b6SWvgnjTFN7vCGCONOhrRVyVSlSvoRxrjdcDW53WRJgRNf5iM7
         BQs4JIRlV/HxHIDrHFbgnv6guen2u2XnMr3hqksXgahyLWkqWKm9jkRG6TXxywomhVsw
         P+cVr5inSL3Xfb8xTkmARMinxUFF+/0gNfFVE0e3aurAp/bcte4s3lkwv3Ae6YAUgUVf
         QxIHiPiPPa/d5t1t7FysrgGAFe73zdQm7q3iMw/T78/2bpPxT1j7WhEAAL7X1b9RyTWV
         HEYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:organization
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:dkim-signature;
        bh=rvdJDM4giZKnPLO1VMGFuov7DdpPF2HB990NAh0E8bQ=;
        fh=rMdDGdadkBGbeJpU3y/j/MRljitCz3HqBYAXR1NZEfU=;
        b=PINMdRcWd3RAzYHmkTwSYmxwfq3tYBWnn0BatkKMxL2i7u3zuhp3zprZoNW+4RskMw
         q2lIjuCigP9TUJXr0K6dMuRVDHJEN7IAfnfmzt3H8zMJBz68gG9HyomX2bPwFf+D5p4A
         s7QuOjW3k8sZ+Ose29Ptyxvpw9hTNSzyuJS1Hh7xq+uLFOhtkpBrV2pdxMlrnYKIKyhN
         sac4sjbOweVJrwCKQeP4Iyc1sNK60ZDIOC3DbIRxBiju5p9cafqgR19pcHO7RD078Bkq
         xgfE/QcdmEpKe3+AgQV9jM11gd/HRnENWlznhdfX+iSxucP+B8HO8rV1gR8Cq4nChLSV
         6f/Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="QD+QE/Tk";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1736331516; x=1736936316; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rvdJDM4giZKnPLO1VMGFuov7DdpPF2HB990NAh0E8bQ=;
        b=NJfHemTkOqKe77TfgWqbogO/yiiFy+KD7/GkLG3fkp1r7n4dqUDN2WPYKTDr0KbWyM
         O4BZE5Wv+DtM8jdU+bDycw3ZHOoOrWXPq75OuDE7YNMA0QngHeCRLZyWrdjdcpPGVdz4
         Ojtog37fvlNXBh30iN+Fi4Ct8ZxC30aDl98DI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736331516; x=1736936316;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :organization:content-language:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rvdJDM4giZKnPLO1VMGFuov7DdpPF2HB990NAh0E8bQ=;
        b=CvIYPAijJNgdZdl6/si1MgFvwxdy5SgWQhXnK4FzceohYeTVozG58HP9d/+n3jBz4f
         KnUF47IsdhOdekN86sA6MJG8K5ClE9x6mhZ6LePKvAyINBUfaoEeiu8me3OV5DZtTJUw
         PVoqu83WiCqke2iEsE/W8rw5ikzWDgDfyVSyqr/9REo71eK8tk35TZmyhvZUoLdiFKdv
         7ciO2bkPvFXV1h1LYvffnOrSjrxdLgSU8VTMyxBbWvQumkFqNmuMAeBx/c/9kSybSFa8
         iadvBJ9zpYFEOuVb4vEVakW49vb7KSynmJjGF1Qq38HCRpjudzQdaGozZMVnYEqM8MAP
         QAOQ==
X-Forwarded-Encrypted: i=2; AJvYcCWUELH0RzhPO5YFkpqXCRA2KH6fcCCiMfykcrHwZPV8OU8olJC/6emW8RWufxzX3F0Oj/GwPQ==@lfdr.de
X-Gm-Message-State: AOJu0YwQluEjOX5mgJodRTa2iyyqT4TOIWlmjwMNlBohzoNZgrpW/GuQ
	H0y2yzqouy75kTG6nxhlzKjCFWHvlvkyUBo5MhzRzefzZc0XHNmuJDj3EifW4Ek=
X-Google-Smtp-Source: AGHT+IHuU95k3zOnRafTdJKP+idGsZCAKU1NIhnWTSVRXMYXpsKhzBnSU0ETyQ8916Pakez1BPCReg==
X-Received: by 2002:a05:6214:d0d:b0:6cb:e648:863e with SMTP id 6a1803df08f44-6df9b2fecc4mr40526086d6.43.1736331516104;
        Wed, 08 Jan 2025 02:18:36 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:c583:0:b0:6d8:a5f7:f114 with SMTP id 6a1803df08f44-6dd153bc263ls66179976d6.0.-pod-prod-03-us;
 Wed, 08 Jan 2025 02:18:35 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCULynyP/s3FXm0NP9FlZuY3T6ilwl16avLGe59nR4XwkZSgzpXyDYJT30EabE0Ahl71YSiXtQomcaZ/jQ==@lists.one-eyed-alien.net
X-Received: by 2002:ad4:5748:0:b0:6d8:850a:4d7d with SMTP id 6a1803df08f44-6df9b1cc40fmr40699706d6.2.1736331515208;
        Wed, 08 Jan 2025 02:18:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736331515; cv=none;
        d=google.com; s=arc-20240605;
        b=Iv4bq6d/iHSF12Sh1OstGDd9EZY3cPNmtVuJEqgL+2zJO7438f5QEqdRBv/R4nb2bS
         EPW7YHRZEAPOLPpdObppfNB3tc/uTRkNW0zFZcpUFtQyiTNUyvXPg5SlYa/GyBrACDo2
         nPYKNg5slFT8xIJ4IVpFEdBH4i85seGk+lmDOpGCZCFzQbXcG7+WWqdBeNABlD0NoPOh
         utKuMKHtis+wiE+JAJ7Yb3mWQZYI6kNumOsj8a2K3SkFGFpmd8sEkcpE8PL8sDURsKFs
         PHGnlitbw2HhnoO1Q1ujD6jaFJWxhIYbKagwFDlVlc5x3fGjSB/rHJmD1NsqR0LjIzax
         sFbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:organization:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature;
        bh=xx85ikLru9614KyosuJXWUYJm6VJE4LKz0axhKxd7Nw=;
        fh=i1lazSQvwm0uMbBgjLZvsDbOHtpcdX7/txCqPFxtsys=;
        b=H7ExdbOl8PDyPndUajFPhfOGBNisp/IHqrjlg18ybKVoqbt6gSXF3jfFy3FncI0JOm
         Qcyi6s8vujrShiINP+6XQBlHPHJQgZNmupYV1ovAOeRed8aZa4sMXLC2lv6x/+gc2JA+
         Aiwrh9kJi9sc9SBEz3yUc8he2/caAHaShp8j3tEJdtA5ZyHTHMatpIV+XdKAyGb0wsvQ
         7O98DeoAPx8TExfnq0vnoNRDFmM8ESm/I/tuzGlCrqgVmcvHa0qBDMQqM1gHtUAzFjzE
         2g1hhvx+lDs0n1YPMOvHlzdnrVXYoUtpqcmC6wYq+vKgirQHIfCeU5ePJL/wKoF6h7Hl
         116Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="QD+QE/Tk";
       spf=pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [2604:1380:45d1:ec00::3])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dd1810c0b8si506636776d6.68.2025.01.08.02.18.35
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 02:18:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3 as permitted sender) client-ip=2604:1380:45d1:ec00::3;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 2176BA40C4C;
	Wed,  8 Jan 2025 10:16:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1355BC4CEDF;
	Wed,  8 Jan 2025 10:18:32 +0000 (UTC)
Message-ID: <d5010a1b-f458-4f1e-b7ab-e0f8210b9af7@kernel.org>
Date: Wed, 8 Jan 2025 19:17:48 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH 03/10] block: don't update BLK_FEAT_POLL in __blk_mq_update_nr_hw_queues
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
Cc: Ming Lei <ming.lei@redhat.com>, Nilay Shroff <nilay@linux.ibm.com>,
 linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 nbd@other.debian.org, linux-scsi@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net
References: <20250108092520.1325324-1-hch@lst.de>
 <20250108092520.1325324-4-hch@lst.de>
From: "'Damien Le Moal' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20250108092520.1325324-4-hch@lst.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dlemoal@kernel.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="QD+QE/Tk";       spf=pass
 (google.com: domain of dlemoal@kernel.org designates 2604:1380:45d1:ec00::3
 as permitted sender) smtp.mailfrom=dlemoal@kernel.org;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=kernel.org
X-Original-From: Damien Le Moal <dlemoal@kernel.org>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
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

On 1/8/25 6:25 PM, Christoph Hellwig wrote:
> When __blk_mq_update_nr_hw_queues changes the number of tag sets, it
> might have to disable poll queues.  Currently it does so by adjusting
> the BLK_FEAT_POLL, which is a bit against the intent of features that
> describe hardware / driver capabilities, but more importantly causes
> nasty lock order problems with the broadly held freeze when updating the
> number of hardware queues and the limits lock.  Fix this by leaving
> BLK_FEAT_POLL alone, and instead check for the number of poll queues in
> the bio submission and poll handlers.  While this adds extra work to the
> fast path, the variables are in cache lines used by these operations
> anyway, so it should be cheap enough.
> 
> Fixes: 8023e144f9d6 ("block: move the poll flag to queue_limits")
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks OK to me.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d5010a1b-f458-4f1e-b7ab-e0f8210b9af7%40kernel.org.
