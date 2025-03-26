Return-Path: <usb-storage+bncBDTKFFUOY4CBBO5JSC7QMGQEHMV4R5A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9E2A71969
	for <lists+usb-storage@lfdr.de>; Wed, 26 Mar 2025 15:52:45 +0100 (CET)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-4770594a277sf20461281cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 26 Mar 2025 07:52:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1743000764; cv=pass;
        d=google.com; s=arc-20240605;
        b=jJ9UWKnn3BDAeslP9i/ANwkCl75g0KaOzHhvftA2FigvS8/cV1KTOZrjLuQ38Y+g6d
         56+ZBSeV5d8XUgOZwjqOx73U2YY9EMocp7JuHNdeBN5RX4CUvriN8TNRAa2oP0fu+D+w
         qIpbG6Cmq8phaeY5z2lOZWDolw+OOPO/RVI6YYUrcExzJzLqfekeyLaIwcfcqnaPY98/
         QzpKy9nNkIhl0qnLrRIpCv9WuVRl85rt1TtSZCaKoFmGCttu+j7ON/gztdRn57O4RWV3
         unvBJ9+EOIqina3fg4+d/mZlaQJULCGM8sN1Gpd2mQMHHXCk00hw+Ac+xZQk1SO+Kmhw
         Vztg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=uY9M/lDEpHo/Kb8zqJo0KMDhfcMHbpy9GxjdJpbs6k0=;
        fh=FnRcI8VbNTx9Qb73waf0iB16/5ICgbVoj0F7rGJZwzE=;
        b=gdSOclXifoM57hKzrYiHklIrHbGaLU5zPV0x9wbhv0WqbUiBGIO86pyy3T3QevZF0J
         sToxMWGpsEBXJTdg8+Fj3BLZV9AZoAb7p9JTD4a3bMKGtfhBvj7S4nHYgsCxanR+rurS
         JEfXXle7YDN++ZG58Xfh09odmMkeBRhwyAwT7Bs0J4JpJOc/dU8vLwkz/Lh9G1Y+THv7
         IAQIWoLR8JBi5FYv2gAdLjDyQ/XlD0g5gwuAeJo+e4EP7VOGLAD38/JOq0XkUdCuvfzz
         rogXszG1MqI5VUooDUwJnhPIO5xNkvm9AqDBLTTFOB38LdR6sMqG5vmkfC/xujlT3pRH
         ueHg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ipQ4munR;
       spf=pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=michal.pecio@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1743000764; x=1743605564; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:message-id:subject:cc:to
         :from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=uY9M/lDEpHo/Kb8zqJo0KMDhfcMHbpy9GxjdJpbs6k0=;
        b=E2yMGH4o9qdA1vZXA+IX2/shM511kftBx4dplewurZ3oKAMNlYWoqlQtcqBFytOOqE
         uwbqY9oPiuvajSDXo7NCicCS56YxPHT3mAu/1uQHZaD6LGPdkgLm37sVqy7iNh/rSnWJ
         lk4LAejR0IOm+79IoWe31728eEz9auW/sHSCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743000764; x=1743605564;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:in-reply-to:message-id:subject:cc:to
         :from:date:x-beenthere:x-gm-message-state:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uY9M/lDEpHo/Kb8zqJo0KMDhfcMHbpy9GxjdJpbs6k0=;
        b=uedHHT90xKihs6/aphh7/T87NXTaxFBEnXRlquwTy5sbUHKbKZ3g/EpJjCQrvN1DMN
         rG+BV9D4msEetu3exNJOl9dy7qgT30hLQyhLuMcCy6Ih3s6dDlbCg4wQAbv5QPsZ5xQR
         ZRoNWvf4OIjse+joRh1RZ32osEgJag7KBMOB4bWPI0mQ/kw+w7v29YVOGJBK1u2nwKkd
         5xnNbOl6hxvIZkjeqCcEzNc4ahoERniZcf8ynXnNfXlp7WNtTt4rZuWZMFFIjxcemu//
         ST7f0Ftfo2+qbY2qQwprOzkBhpO30VGMc764BOPAxE2X3B1p+m3pglqGicSVV33CBVqs
         iPOg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCW8Y/j7sYctt8bEo0X9zNyRMPe2xORLiYj6ud/CojFflGwRAUqEHRFygMM3H1UrZ7pJd6qURQ==@lfdr.de
X-Gm-Message-State: AOJu0YwRqodsT3hMyR0HmVE9b4sSfqxGr8Q32ey/DFGdC8jAe7L993hv
	Lr1X4MNcRxnl1tYde3GqEjuTSIo4z2C/L1RC336FD1E2CgLLq1+eNj4yG0DeL0E=
X-Google-Smtp-Source: AGHT+IHjQhAAGdV+2qRyLU3tHbT6Zgvdb+i6zkkGGlCmodztwF6RD5rnMqbSSrmwD8Am7RBeIzMi6A==
X-Received: by 2002:a05:622a:4005:b0:471:80ef:35e7 with SMTP id d75a77b69052e-4775f2b55c1mr64543431cf.4.1743000763869;
        Wed, 26 Mar 2025 07:52:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=ARLLPAL9D7JQnuTOTbYa+1nY6PJb02JvfWWZ3fdmnUsqldihFQ==
Received: by 2002:ac8:4081:0:b0:476:70d8:43d2 with SMTP id d75a77b69052e-47710b24323ls4160571cf.2.-pod-prod-00-us;
 Wed, 26 Mar 2025 07:52:43 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+lgGntFddCkMtDUyIVAigmiqJv8kLB9WAn/S2DhwRfNf2ZYQrk5NJthNN/O4gz6aqVpgj3VLjm7NOGg==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:254e:b0:7c5:9abe:a7a5 with SMTP id af79cd13be357-7c5ed8c1c9amr10375185a.7.1743000762960;
        Wed, 26 Mar 2025 07:52:42 -0700 (PDT)
Received: by 2002:a05:6504:5982:b0:293:32b4:31b9 with SMTP id a1c4a302cd1d6-294bf4a40c1msc7a;
        Wed, 26 Mar 2025 00:24:00 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUe7IHSdWPgtyyGTHGRaSqHRxCVo9faoWKhrXTPCAkwLhsBEljCzD1SAlYPIhfwEsy6AqAQUvzjuZ1maA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:2206:b0:549:58db:6e9c with SMTP id 2adb3069b0e04-54ad64ef3afmr6738945e87.39.1742973838384;
        Wed, 26 Mar 2025 00:23:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1742973838; cv=none;
        d=google.com; s=arc-20240605;
        b=SxJ0bk/eaHWJ3Mb8rhudB/M4ovW/CkUJxhx6u0+j/wTdmAmF5Tdn+obmwXxcIQQHMZ
         blsZBAfWr7/20ts1yUSFtJvj3sCGlKY7Qiwcu9WCDmWK1lrmscRll4l91YTX2mIXPkln
         yAV6JSquny94k60abKDao9pxnkXX+vWxNH0Qa6unsCySDkyA1jebpPSj54R8bUh7xZdv
         CLO+5WPk26patOj4VNSPwStpLGZ4oeqdE7nlGmeCNO+dEfFKRhDYv78J+fSIoUrh4wUb
         Tto1KFgRD5GwdEf3n8Vm/+PTh//Bv5wp8A/NsiYBMA9XsYmt/x62XlgiSfsOLV8dEAWY
         /dEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:in-reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=RC0v/dICMowzdUsWp0DyK5hDPdADpm8V6Q0kfq5W0lw=;
        fh=GMg6XcjyLS3eTxGxJ3pzNS0AmaA7NK66yME0ArNFLSQ=;
        b=VvOdqRUCuH2PA1C8qqO2H7cvLODCArf1wPBd6GqmeUx9nDnJbh+aoIjp6uFibNINv4
         nCBHEo8kqMIaMyPlc/yrYuH6/cAy800nVwB3xQ9TYrzlddrId2Spnjwfkzpvoje3fS+u
         9Xn+oVQ3XRozZ+IEaIjB/+FbLVw/qm6r6BqplVtxsNR02EntzDQUOKI7+qFc5cT1Bm3B
         y9luogPpZIEFROspPNq82+PzbfoEnDJXfNNC0KlIShVbCglSPfYb+VrYbwjiybP/rWkm
         K/8CuhnzDxa1C/Z2edM099bYqKfbYN7twCCSLaiJM01kYXcp9hm2tIvIYQTaVL715HJI
         V6RQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=ipQ4munR;
       spf=pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=michal.pecio@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id 2adb3069b0e04-54ad64fc7efsor1922256e87.21.2025.03.26.00.23.58
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 26 Mar 2025 00:23:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCX7jswpWjMkumMwy+8A7/rAN3w0KKFa1Ksn0Q0FTMxDNtpazexhaH6JMQb1LLaAlKRceITndn5osI0m7Q==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGnctZLcoeMheFsG/LIegnTTWJDRF0BQlgEwjnfF4xnAFm/9u6KPqyLB2Y3Pf8OcG
	9XBujZlpvSzw3PQQWQHGcIcxQe8cX5ZH1je/RYY5rOi9zf6bN5hJB/a1yVt1HQ7vLzad1g3Dyrm
	dFFMmT9JgD3M9kmPI/tLIfnRCaYKS1xO6UNqTlpgLMeWQjsLierwjXiqGhPjmZVFXTp3QtuTkra
	ra+HQC0jI3YGNMtCbTJExjpArOKHMw30aSUFg47UAFo3IyChH2nd+mULTuJPzouua+RieLC2myM
	loi45tiJOWMF9WC7A3woTjub6WmEBskiSlIa+o/HtuyHrfNJKjA9nwqNKBw=
X-Received: by 2002:a05:6512:3f1e:b0:545:6a2:e58 with SMTP id 2adb3069b0e04-54ad64ef4ecmr7894381e87.32.1742973837595;
        Wed, 26 Mar 2025 00:23:57 -0700 (PDT)
Received: from foxbook (adqm95.neoplus.adsl.tpnet.pl. [79.185.146.95])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad646cedfsm1714368e87.2.2025.03.26.00.23.56
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 26 Mar 2025 00:23:57 -0700 (PDT)
Date: Wed, 26 Mar 2025 08:23:53 +0100
From: =?UTF-8?B?TWljaGHFgg==?= Pecio <michal.pecio@gmail.com>
To: dengjie03@kylinos.cn
Cc: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, stern@rowland.harvard.edu,
 usb-storage@lists.one-eyed-alien.net, xiehongyu1@kylinos.cn
Subject: [usb-storage] Re: [PATCH] usb-storage: apply IGNORE_UAS for Realtek
 on RTL9210
Message-ID: <20250326082353.3a79aa8a@foxbook>
In-Reply-To: <20250326022019.1593669-1-dengjie03@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: michal.pecio@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=ipQ4munR;       spf=pass
 (google.com: domain of michal.pecio@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=michal.pecio@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@lists.one-eyed-alien.net
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

> The UAS mode of Realtek USB_HDD is reported
> to fail to work on several platforms with
> the following error message,

Possibly related?
https://github.com/raspberrypi/linux/commit/9d3afd87557637a37135aa6e370dea846b839c2d

An RTL9210 hardware bug with a simple driver workaround, solved
by RPi but never submitted upstream. I guess you could try it.

> [  148.437916][ 22] xhci_hcd 0000:ba:02.0: xHCI host not responding to stop endpoint command.
> [  148.462295][ 22] xhci_hcd 0000:ba:02.0: xHCI host controller not responding, assume dead

That's your host controller crashing, maybe a device bug confused it.
It may be the reason why storage drivers never recover from the error.

Out of curiosity, which HC is doing this?

> then after
> re-connecting the device will be offlined
> and not working at all.

Nothing can possibly work after the above, until xhci_hcd is reloaded.

Regards,
Michal

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20250326082353.3a79aa8a%40foxbook.
