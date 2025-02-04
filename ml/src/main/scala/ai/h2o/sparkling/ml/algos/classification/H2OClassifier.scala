/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package ai.h2o.sparkling.ml.algos.classification

import ai.h2o.sparkling.H2OFrame
import ai.h2o.sparkling.ml.algos.H2OAlgoCommonUtils
import org.apache.spark.sql.{DataFrame, Dataset}
import org.apache.spark.sql.functions.col
import org.apache.spark.sql.types.StringType

private[sparkling] trait H2OClassifier extends H2OAlgoCommonUtils {
  def getLabelCol(): String

  private def prepareDatasetForClassification(dataset: Dataset[_]): DataFrame = {
    val labelColumnName = getLabelCol()
    dataset.withColumn(labelColumnName, col(labelColumnName).cast(StringType))
  }

  override private[sparkling] def prepareDatasetForFitting(dataset: Dataset[_]): (H2OFrame, Option[H2OFrame]) = {
    super.prepareDatasetForFitting(prepareDatasetForClassification(dataset))
  }

  override private[sparkling] def prepareDatasetForFitting(
      dataset: Dataset[_],
      registerFramesForDeletion: Boolean): (H2OFrame, Option[H2OFrame]) = {
    super.prepareDatasetForFitting(prepareDatasetForClassification(dataset), registerFramesForDeletion)
  }
}
